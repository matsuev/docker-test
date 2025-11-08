FROM python:3.9.25-alpine3.22

WORKDIR /APP

COPY ./flask .

RUN pip3 install -r ./flask/requirements.txt

EXPOSE 8000

CMD ["python3", "./flask/app.py"]
