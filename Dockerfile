# Use Python 3.11 or later as a base image
FROM python:3.11

# Copy contents into image
COPY . .

# Install pip dependencies from requirements
RUN pip3 install -r requirements.txt

# Set environment variables - PORTNAME and HOSTNAME
ENV PORTNAME=8080  
ENV HOSTNAME=0.0.0.0

# Expose the correct port
EXPOSE 8080

# Create an entrypoint
ENTRYPOINT ["python3", "lbg.py"]
