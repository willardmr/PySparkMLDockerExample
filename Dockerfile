FROM bde2020/spark-python-template:2.4.0-hadoop2.7

ENV SPARK_APPLICATION_PYTHON_LOCATION=/app/entrypoint.py

RUN apk update 
RUN apk add make automake gcc g++ subversion python3-dev
RUN pip3 install numpy
