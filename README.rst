==========
pypiserver
==========

Installs and configures `Pypiserver <https://pypi.python.org/pypi/pypiserver>`_. It can use Nginx to ensure that https is used to serve the packages.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``pypiserver``
--------------

Installs and configures the Pypiserver package.

It requires the `Python formula <https://github.com/saltstack-formulas/python2-formula>`_.

``pypiserver.nginx``
--------------------

Configures Nginx to redirect the http traffic to https.

It requires the `Nginx formula <https://github.com/saltstack-formulas/nginx-formula>`_. A certificate and its key must also be provided.
