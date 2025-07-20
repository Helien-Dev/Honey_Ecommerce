FROM python:3.12-slim

WORKDIR /code/src

COPY requirements.txt /code/
RUN pip install --no-cache-dir -r /code/requirements.txt

COPY . /code/
