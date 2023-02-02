# Use an official Python image as the base image
FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR //home/ubuntu/flask_example

# Copy the application code to the container
COPY . /home/ubuntu/flask_example

# Install the dependencies required to run the application
RUN pip install --no-cache-dir -r requirements.txt

# Set the environment variable for the Flask application
ENV FLASK_APP=hello.py

# Expose the port that the Flask application will listen on
EXPOSE 5000

# Run the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]

