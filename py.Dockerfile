FROM python:3.9-alpine

WORKDIR /app

COPY ./flask .

RUN pip3 install -r requirements.txt

EXPOSE  5000

CMD ["python3", "/app.py"]