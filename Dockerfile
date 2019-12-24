FROM python:3.7-slim

WORKDIR .

COPY kds/requirements.txt kds/requirements.txt

RUN pip3 install -r kds/requirements.txt

COPY . .

CMD [ "python3", "run.py" ] 
