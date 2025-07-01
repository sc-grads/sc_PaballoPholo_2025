# Use the official Python 3.13.3 image
FROM python:3.13.3-slim

# Expose Flask's default port
EXPOSE 5000

# Set the working directory
WORKDIR /app

# Install required packages
RUN pip install flask

# Copy only the app-related files
COPY App.py .

# Run the Flask app directly
ENV FLASK_APP=App.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV PYTHONPATH=/app PYDEVD_DISABLE_FILE_VALIDATION=1 PYTHONWARNINGS=ignore PYTHONOPTIMIZE=0



CMD ["flask", "run"]

#CMD ["flask", "run", "--host=0.0.0.0"]

