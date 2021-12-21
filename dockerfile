FROM ubuntu:22.04

ADD index.html ./index.html
ADD ukoreh ./ukoreh
ADD run.sh ./run.sh

RUN chmod +x ./ukoreh \
  && chmod +x ./run.sh \
  && apt-get update \
  && apt-get -y install python-is-python3 wget ca-certificates

CMD ./run.sh
