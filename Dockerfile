FROM python:3.9-slim

WORKDIR /app

# Copy requirements.txt from main dir
COPY requirements.txt ./

# Install dependencies
RUN pip install -r requirements.txt

# Copy the whole project (or just the app folder)
COPY . .

# Change working dir to where app.py is
WORKDIR /app/python-docker-ci

# Expose port 8080
EXPOSE 8080

# Run the app
CMD ["python", "app.py"]
