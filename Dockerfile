FROM nvidia/cuda:11.4.1-devel-ubuntu20.04

RUN apt-get update
RUN apt-get install -y pip wget unzip 

RUN pip install notebook pandas geopandas seaborn jupyterlab statsmodels tensorflow keras sklearn xgboost xlrd scikit-learn-intelex tslearn
RUN pip install torch==1.10.2+cu113 torchvision==0.11.3+cu113 torchaudio==0.10.2+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html

RUN mkdir /Work

WORKDIR /Work
CMD jupyter lab --ip 0.0.0.0 --allow-root 
