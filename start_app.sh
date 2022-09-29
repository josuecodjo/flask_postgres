#!/bin/sh
# Flask commands
flask db init
flask db migrate -m "initial migration"
##############################################
flask run --host=0.0.0.0 --port=30100
exec "$@"