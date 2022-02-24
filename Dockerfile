FROM nvidia/cuda:11.4.1-devel-ubuntu20.04

RUN apt-get update
RUN apt-get install -y pip wget unzip 

RUN pip install notebook pandas geopandas seaborn jupyterlab statsmodels tensorflow keras sklearn xgboost xlrd

RUN mkdir /Work

WORKDIR /Work
CMD jupyter lab --ip 0.0.0.0 --allow-root 
