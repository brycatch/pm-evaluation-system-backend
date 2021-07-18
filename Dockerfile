FROM python:3.8.3-slim-buster

WORKDIR /app

RUN apt-get update && apt-get install -y \
    python3-dev \
    libpq-dev \
    gcc

COPY ./requirements.txt ./requirements.txt
COPY ./.env.db ./.env.db
COPY ./.env.local ./.env.local

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 8000