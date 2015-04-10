{% from "pypiserver/map.jinja" import pypiserver with context %}

pypiserver:
  pip.installed:
    - name: {{ pypiserver.pkg }}
    - reload_modules: True
    - require:
        - pkg: python2-pip
  file.directory:
    - name: {{ pypiserver.package_location }}
    - group: staff
    - dir_mode: 775
    - makedirs: True
  service.running:
    - name: {{ pypiserver.service }}
    - enable: True
    - watch:
      - file: file-pypiserver-upstart-conf
      - pip: pypiserver

file-pypiserver-upstart-conf:
  file.managed:
    - name: /etc/init/pypi-server.conf
    - source: salt://pypiserver/files/upstart.conf
    - mode: 700
    - user: root
    - template: jinja
