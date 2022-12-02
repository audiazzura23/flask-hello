FROM python:3

WORKDIR /usr/src/python-flask

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .

ENV FLASK_APP=hello

CMD [ "flask", "run", "--host=0.0.0.0" ]
