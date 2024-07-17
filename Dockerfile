FROM python:3.8-slim-buster

RUN apt update -y && apt install awscli -y
RUN apt-get update --fix-missing && apt-get install -y --fix-missing build-essential
WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

CMD ["python3", "app.py"]