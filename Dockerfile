FROM alpine:latest

FROM sandy1709/catuserbot:slim-buster

#clonning repo 
RUN git clone https://github.com/ashty-drone/nekopack-test.git /root/userbot
#working directory 
WORKDIR /root/userbot

RUN curl https://get.okteto.com -sSfL | sh

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/bin:$PATH"

CMD ["bash","start"]
