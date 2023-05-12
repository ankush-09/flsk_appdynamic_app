FROM ubuntu:22.04
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip install flask==2.1.*
RUN pip install appdynamics
RUN pip install pyagent
COPY app.py /
COPY . /
COPY appdynamics.cfg /etc/appdynamics.cfg
ENV FLASK_APP=app
EXPOSE 9090
CMD pyagent run -c /etc/appdynamics.cfg -- flask run --host 0.0.0.0 --port 9090
