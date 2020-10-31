# BoxBilling Documentation

[![Build Status](https://travis-ci.org/boxbilling/docs.svg?branch=master)](https://travis-ci.org/boxbilling/docs)
[![Documentation Status](https://readthedocs.org/projects/boxbilling/badge/?version=latest)](https://docs.boxbilling.com/en/latest/?badge=latest)

This is the repository for the BoxBilling documentation. Our documentation is
hosted on [Read The Docs](https://readthedocs.org) which is automatically
updated when any changes are made to this repository.

You are welcome to fork this repository and add, correct, enhance the documentation.

The documentation language is [reStructuredText](https://www.sphinx-doc.org/en/master/usage/restructuredtext/index.html)

## Build local version of docs

    docker build --tag boxbilling-docs:latest .
    docker run -i -t -p 1318:8000 boxbilling-docs:latest python3 -m http.server --directory /docs/build/html
    open http://localhost:1318/
