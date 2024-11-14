#!/bin/bash

function color {
    echo -e "\e[1;36m$1\e[0m"
}

if [ ! -d venv ]; then
    color "Creating a venv"
    python3 -m venv venv
fi

if [ "$VIRTUAL_ENV" != "" ]; then
    color "Deactivating other venv"
    deactivate
fi

color "Activate venv"
source venv/bin/activate

color "Install requirements"
pip install --upgrade pip
pip install -qr requirements.txt

color "Python Version:"
python3 --version
