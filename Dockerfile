# Pull base image.
FROM xblaster/tensorflow-jupyter
MAINTAINER xx

USER root
RUN apt-get update; apt-get install -y octave
RUN pip install octave_kernel

WORKDIR /data
EXPOSE 8888
CMD jupyter notebook --no-browser --ip=0.0.0.0
