FROM python:latest
COPY . /app
WORKDIR /app
EXPOSE 3000
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app
CMD ["python3", "app.py"]