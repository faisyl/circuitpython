#! /bin/bash

curl -sS https://bootstrap.pypa.io/get-pip.py | python3
pip3 install -r /src/requirements-dev.txt -r /src/requirements-doc.txt

