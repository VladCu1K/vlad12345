FROM ubuntu
ENV FLASK_ENV=development
ENV FLASK_APP=/var/www/flaskscript.py
RUN apt-get update
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update
RUN apt install -y python3
RUN apt install -y python3-pip
RUN pip3
RUN pip3 install flask
COPY ./flaskscript.py /var/www/
RUN pip install --upgrade setuptools
RUN cd /var/www
CMD [ "flask" , "run" ]