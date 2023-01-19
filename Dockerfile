FROM python:3.8.14-slim

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY . .

RUN pip install -r requirements.txt

ENV FLASK_DEBUG=true
ENV DBNAME="restaurant"
ENV DBHOST="mydb"
ENV DBUSER="root"
ENV DBPASS="josh"

ENTRYPOINT ["/opt/app/start_app.sh"]
