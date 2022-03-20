# Template_DataScience_JupyLab_Docker

Repository that contains the basic tests, hooks & setups to be used for any (jupyter-lab centric) data science project

The Docker image correspoding to the Dockerfile stored here can be build, and used to through a jupyter notebook using the following 2 commands (with GPU support built-in) :

``docker build -t dsjupylab .``

``docker run --runtime nvidia -v $PWD:/Work -p 8888:8888 -it dsjupylab``
