# Use Python 3.9 image as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the application code into the container
COPY app.py .

# Install dependencies
RUN pip install Flask

# Expose the application port
EXPOSE 80

# Run the app
CMD ["python", "app.py"]
