OS = Linux

CURDIR = $(shell pwd)
SOURCEDIR = $(CURDIR)

ECHO = echo
RM = rm -rf
MKDIR = mkdir
FLAKE8 = flake8
PEP8-NAMING = pep8-naming
PIP_INSTALL = pip install

build:
	docker build -f Dockerfile -t hello-world:latest .

up:
	docker-compose up

down:
	docker-compose down

ps:
	docker ps -a|grep hello-world

kompose:
	kompose convert -c

kompose-up:
	kompose --file ./docker-compose.yml up
