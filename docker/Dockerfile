from ubuntu:22.10

RUN apt update -yyq && apt install -yyq build-essential

RUN apt install -yyq software-properties-common && add-apt-repository ppa:pybricks/ppa && apt -yyq install git gettext uncrustify

# For ESP
RUN apt install -yyq ninja-build cmake python-is-python3 curl libusb-1.0-0-dev
RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python3
ADD requirements*.txt /
RUN pip3 install virtualenv
RUN virtualenv /root/venv
RUN . /root/venv/bin/activate && \
	pip3 install -r /requirements-dev.txt && \
	pip3 install -r /requirements-doc.txt
COPY esp-gitconfig /root/.gitconfig



