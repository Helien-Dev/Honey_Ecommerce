FROM python:3.12-slim

# Mini vm dependencies
RUN apt-get update && apt-get install -y \
    # for postgres
    libpq-dev \
    # for Pillow
    libjpeg-dev \
    # for CairoSVG
    libcairo2 \
    # other
    gcc \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /code/src

COPY requirements.txt /code/
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r /code/requirements.txt

COPY . /code/

# clean apt to reduce image size
RUN apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

