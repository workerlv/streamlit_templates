# Use a lightweight Python image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Update package lists and install Git
RUN apt-get update && apt-get install -y git

# Copy requirements.txt to the container
COPY requirements.txt ./requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the container
COPY . .

# Expose the port that Streamlit runs on
EXPOSE 8510

# Command to run the Streamlit app
# ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8510", "--server.address=0.0.0.0"]