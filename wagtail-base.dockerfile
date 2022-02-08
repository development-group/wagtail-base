FROM python:3.5.2 AS base-env

RUN LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 DEBIAN_FRONTEND=noninteractive apt-get update -q --fix-missing
RUN apt-get install -y g++ libjpeg62-turbo-dev zlib1g-dev

CMD ["python3"]