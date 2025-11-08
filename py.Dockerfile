FROM 3.9.25-alpine3.22

WORKDIR /app

COPY ./flask .

RUN pip3 install -r requirements.txt

#EXPOSE  (порт)

CMD ["python3", "/app.py"]