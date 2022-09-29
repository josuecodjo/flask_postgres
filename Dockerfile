FROM python:3.8.14-slim

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT ["/opt/app/start_app.sh"]
