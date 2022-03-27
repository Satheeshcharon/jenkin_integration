FROM python:3

# set work directory
WORKDIR /app

ADD . /app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# copy project
COPY . /app

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]