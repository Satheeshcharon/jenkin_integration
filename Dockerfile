FROM python:3

# set work directory
WORKDIR /app

ADD . /app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
# COPY ./requirements.txt /app/requirements.txt


# copy project
COPY . /app
RUN pip install django

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
