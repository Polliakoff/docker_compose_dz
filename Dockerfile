FROM python:3.10

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .

ENV FLASK_RUN_HOST 0.0.0.0
ENV  FLASK_APP hello.py

EXPOSE 5000

CMD ["flask", "run"]
