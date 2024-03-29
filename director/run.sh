#!/bin/sh

# This assumes you've created a virtual environment and installed Gunicorn
# See the docs for instructions

source venv/bin/activate

#Flask
python3 -m gunicorn app:app -b $HOST:$PORT -w 1
# Django (replace <name> with the name of your application)
# gunicorn <name>.wsgi -b $HOST:$PORT -w 1
