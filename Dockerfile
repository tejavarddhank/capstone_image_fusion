FROM python:3.8

# Install system dependencies
RUN apt-get update \
    && apt-get install -y libgl1-mesa-glx

# Set the working directory
WORKDIR /app

# Copy the application code to the container
COPY . /app

# Install Python dependencies
RUN pip install -r requirements.txt

# Expose the port on which your Flask app runs
EXPOSE 5000

# Command to run the application
CMD ["flask", "run", "--host=0.0.0.0"]
