#!/bin/sh

### Create env file
echo "FLASK_DEBUG=$FLASK_DEBUG" | tee -a /opt/app/.env
echo "DBNAME=$DBNAME" | tee -a /opt/app/.env
echo "DBHOST=$DBHOST" | tee -a /opt/app/.env
echo "DBUSER=$DBUSER" | tee -a /opt/app/.env
echo "DBPASS=$DBPASS" | tee -a /opt/app/.env

# Flask commands
flask db init
flask db migrate -m "initial migration"
##############################################
flask run --host=0.0.0.0 --port=30100
exec "$@"