#! /bin/bash

drun(){
    docker run --rm \
	    -v $(pwd)/..:/src \
	    -v $(pwd)/runtime-tooling/espressif:/root/.espressif \
	    circuitpythonbuild:base bash --init-file /root/venv/bin/activate $@
	    #-v $(pwd)/runtime-tooling/venv:/root/venv \
}
drun /src/ports/espressif/esp-idf/install.sh
docker run --rm  -it \
    -v $(pwd)/..:/src \
    -v $(pwd)/runtime-tooling/espressif:/root/.espressif \
    circuitpythonbuild:base bash --init-file /root/venv/bin/activate 
    #-v $(pwd)/runtime-tooling/venv:/root/venv \

