#this are comments in the docker file. With the comments I will explain how the docker file should work

#and what should be included.



#We first need to add the image we want to use for our different docker images. In this case, pyhton 3.9.0



FROM python:3

COPY requirements.txt ./

COPY sources/Hello.py .

#Upadate the image into the latest packages

RUN apt-get update
RUN curl -fsSLO  https://get.docker/builds/Linux/x86_64/docker-17.04.0-ce.tgz  \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz

CMD [ "python","sources/calc.py"]