#COMMENT
FROM python:3.7.2-stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
#RUN pip install flask
RUN pip install -r requirements.txt

#ENTRYPOINT [“python”, “app.py”]
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]