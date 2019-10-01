FROM ubuntu:18.10

RUN apt-get update

RUN apt-get install -y python3-dev make automake gcc g++ subversion python3-dev \
    python3-pip

WORKDIR /app

COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

EXPOSE 8080

CMD ["python3", "app.py"]