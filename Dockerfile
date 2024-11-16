FROM python:latest
COPY . /app
WORKDIR /app
EXPOSE 3000
RUN pip3 install psycopg2 gunicorn && pip3 freeze > requirements.txt
COPY . /app
CMD ["python3", "app.py"]