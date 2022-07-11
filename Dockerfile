FROM python:3.6-alpine

# hadolint ignore=DL3013
RUN pip install flask

COPY . /opt/

EXPOSE 8080

WORKDIR /opt

ENV APP_COLOR=red
ENV VERSION=v3

ENTRYPOINT ["python", "app.py"]
