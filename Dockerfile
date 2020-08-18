FROM python:3.6-alpine3.7

RUN apk add bash
RUN pip install --upgrade pip
RUN pip install --upgrade cython
RUN apk add --no-cache lapack libstdc++ 
RUN apk add --virtual .builddeps gcc gfortran musl-dev lapack-dev g++

RUN pip install pika==1.1.0
RUN pip install pytest==5.1.3
RUN pip install pytest-cov==2.7.1
RUN pip install retry==0.9.2
RUN pip install redis==3.3.8
RUN pip install numpy==1.15.4
RUN pip install scipy==1.0.0
RUN pip install anytree==2.4.3
RUN pip install nltk==3.3
RUN pip install openpyxl==2.5.12
RUN pip install scikit-learn==0.21.2
RUN pip install python-Levenshtein==0.12.0

RUN apk del .builddeps && rm -rf /root/.cache
