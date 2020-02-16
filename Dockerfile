FROM python:3.6

RUN apt-get update
RUN mkdir /app/
WORKDIR /app/
COPY . /app/
RUN pip install -r requirements.txt
RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]