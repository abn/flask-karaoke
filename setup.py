#!/usr/bin/env python
"""
Source build and installation script.
"""

from os.path import dirname, join
from pip.req import parse_requirements
from setuptools import setup


BASE_DIR = dirname(__file__)


def get_requirements(filename=):
    return [str(r.req) for r in parse_requirements(join(BASE_DIR, filename))]


requirements = {
    'install_requires': get_requirements('requirements.txt'),
    'tests_require': get_requirements('test-requirements.txt'),
}


setup(
    name='flask-karaoke',
    version='0.0.0',
    description='An empty flask app.',
    author='Arun Babu Neelicattu',
    url='https://github.com/abn/flask-karaoke',
    dependency_links=[
    ],
    **requirements,
)
