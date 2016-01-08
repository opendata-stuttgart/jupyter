# Pull base image.
FROM xblaster/tensorflow-jupyter
MAINTAINER xx

USER root

WORKDIR /data
EXPOSE 8888
CMD jupyter notebook --no-browser --ip=0.0.0.0
