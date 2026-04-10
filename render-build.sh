#!/usr/bin/env bash
set -o errexit

# Install system dependencies needed for dlib
apt-get update && apt-get install -y \
    cmake \
    g++ \
    make \
    libboost-all-dev

# Then install Python dependencies
pip install -r requirements.txt

# Collect static files and run migrations
python manage.py collectstatic --noinput
python manage.py migrate
