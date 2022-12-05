#! /bin/bash

cp ../requirements*.txt .
docker build -t circuitpythonbuild:base .
rm requirements*.txt
