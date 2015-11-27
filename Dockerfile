# Pull base image.
FROM jupyter/all-spark-notebook
MAINTAINER xxx

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

USER root

WORKDIR /data
EXPOSE 8888
CMD jupyter notebook --no-browser --ip=0.0.0.0
