#!/usr/bin/env python
"""
Source build and installation script.
"""

from setuptools import setup


setup(
    name='flask-karaoke',
    version='0.0.1',
    description='An empty flask app.',
    author='Arun Babu Neelicattu',
    url='https://github.com/abn/flask-karaoke',

    dependency_links=[
    ],

    install_requires=[
        'Flask>=0.10',
        'Flask-Admin>=1.0.6',
        'Flask-Bcrypt',
        'Flask-Cache',
        'Flask-Login>=0.1.1',
        'Flask-SeaSurf',
        'Flask-SSLify',
        'Flask-Views',
        'Flask-WTF>=0.9.1',
        'blinker',
    ],
)
