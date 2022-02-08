FROM python:3.5.2 AS base-env

RUN LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 DEBIAN_FRONTEND=noninteractive apt-get update -q --fix-missing
RUN apt-get install -y g++ libjpeg62-turbo-dev zlib1g-dev

RUN mkdir /app
RUN chown -R www-data /app

COPY ./requirements.txt /requirements.txt

RUN python3 -m pip install -r /requirements.txt

CMD ["python3"]