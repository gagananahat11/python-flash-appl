# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy app files
COPY requirements.txt .
RUN pip install -r requirements.txt
# new
COPY . .
EXPOSE 5000
# Run the app
CMD ["python", "app.py"]
