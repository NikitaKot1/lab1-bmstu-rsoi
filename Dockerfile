FROM python:latest
COPY . /app
WORKDIR /app
EXPOSE 3000
RUN pip freeze > requirements.txt
COPY . /app
CMD ["python3", "app.py"]