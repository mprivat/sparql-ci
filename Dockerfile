FROM ubuntu

RUN apt update -qq; \
    apt install -yq openjdk-11-jre-headless; \
    apt install -yq software-properties-common; \
    apt install -yq python3.8 ;\
    apt install -yq make; \
    apt install -yq python3-pip ;

RUN ln -s `which python3` /usr/bin/python
RUN ln -s `which pip3` /usr/bin/pip

# RUN pip3 install --no-cache-dir --upgrade pip setuptools awscli boto3 pylode rdflib

# ENTRYPOINT ["docker-entrypoint.sh"]

