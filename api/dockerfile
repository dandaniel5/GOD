# Use an appropriate base image for ARM64, for example:
FROM python:3.11

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install pip and application dependencies
RUN pip install --no-cache-dir --upgrade pip
WORKDIR /app
COPY ./requirements.txt /app/requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt
RUN pip3 install python-dotenv

# Copy the application code
COPY ./app .
COPY ./start.sh .

RUN chmod +x /app/start.sh
# Start the application using a shell script
CMD ["/app/start.sh"]


