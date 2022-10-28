FROM python:3.10.7

ENV FLASK_APP=labs

COPY requirements.txt /opt

RUN python3 -m pip install -r /opt/requirements.txt

COPY labs /opt/labs

WORKDIR /opt

CMD flask --app labsrun --host 0.0.0.0 -p $PORT