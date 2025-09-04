FROM python:3.9-slim

WORKDIR /app

COPY python-docker-ci/requirements.txt ./
RUN pip install -r requirements.txt

COPY python-docker-ci/ ./

EXPOSE 8080
CMD ["python", "app.py"]
