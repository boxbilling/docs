# BoxBilling Documentation

## Welcome

This is the repository for the BoxBilling documentation. Our documentation is
hosted on Read The Docs (http://www.readthedocs.org) which is automatically
updated when any changes are made to this repository.

You are welcome to fork this repository and add, correct, enhance the
documentation yourselves.

The documentation language is reStructuredText (https://www.sphinx-doc.org/en/master/)

## Build local version of docs

    pip3 install -U sphinx
    pip3 install sphinx_rtd_theme
    sphinx-build -b html en target
