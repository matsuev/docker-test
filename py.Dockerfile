FROM python:3.9.25-alpine3.22

WORKDIR /app

COPY ./flask .

RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["python3", "/app/app.py"]
