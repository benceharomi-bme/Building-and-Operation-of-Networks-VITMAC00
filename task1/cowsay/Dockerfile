FROM ubuntu:latest

RUN apt update && apt -y install cowsay

ENV PATH="/usr/games/:${PATH}"

ADD start_cowsay.sh /root/start_cowsay.sh
ADD sentences.log /root/sentences.log

ENV WAITFILE_SENTENCE="I don't know what to say..."
ENV BAILOUT_SENTENCE="Too late. See you next time!"
ENV FNAME="/root/sentences.log"
ENV SLEEP="10"
ENV DEST="/root/shared_volume/index.html"

CMD ["/bin/bash", "/root/start_cowsay.sh"]
