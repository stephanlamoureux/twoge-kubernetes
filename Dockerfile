# Use a specific version of the python:alpine image to ensure consistent builds
FROM python:3.10-alpine

# Install dependencies
RUN apk update && \
    apk add --no-cache build-base libffi-dev openssl-dev

# Copy only the requirements.txt initially, to avoid invalidating the cache at this step when other files change.
COPY requirements.txt /app/requirements.txt

# Set the working directory
WORKDIR /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Now copy the rest of the app's source code
COPY . /app

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the application
CMD ["python", "app.py"]
