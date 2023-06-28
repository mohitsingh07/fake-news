# Use the official Python base image with the desired version
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the Python dependencies
RUN pip install  -r requirements.txt

# Copy the Flask application files to the working directory
COPY . .

# Expose the port on which your Flask application will run
EXPOSE 5000

# Set the environment variable
ENV FLASK_APP=app.py

# Run the Flask application
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]
