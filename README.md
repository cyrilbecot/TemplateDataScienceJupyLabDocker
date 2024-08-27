# template_datascience_jupylab_docker

Repository that contains the basic tests, hooks & setups to be used for any (jupyter-lab centric) data science project

Please have the following software to run all the tests :
``mypy black flake8 pre-commit``

And run the following command upon downloading the repository : ``pre-commit install ; pre-commit autoupdate``

Then all the syntax text, reformating and sniffing will be done upon commiting.

The Docker image correspoding to the Dockerfile stored here can be build, and used to through a jupyter notebook using the following 2 commands (with GPU support built-in) :

``docker build -t dsjupylab .``

``docker run --runtime nvidia -v $PWD:/Work -p 8888:8888 -it dsjupylab``
