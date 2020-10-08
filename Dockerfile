# pull base image
FROM python:3.8

# set environment variable
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# set work directory

WORKDIR /apps


# install dependecies
COPY Pipfile Pipfile.lock /apps/

RUN pip install pipenv && pipenv install --system

# copy the project

COPY . /apps/
