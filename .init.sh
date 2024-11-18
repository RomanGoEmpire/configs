#!/bin/bash

function color {
    echo -e "\e[1;36m$1\e[0m"
}

pwd_path=$(echo "$(pwd)/venv" | tr '[:upper:]' '[:lower:]')
venv_path=$(echo "$VIRTUAL_ENV" | tr '[:upper:]' '[:lower:]')

if [ ! "$pwd_path" = "$venv_path" ]; then
    color "Deactivating other venv..."
    deactivate
fi

if [ ! -d venv ]; then
    color "Creating a venv..."
    python3 -m venv venv
fi

color "Activate venv..."
source venv/bin/activate

color "Install requirements..."
pip install -q --upgrade pip
pip install -qr requirements.txt

color "Version:"
python3 --version
