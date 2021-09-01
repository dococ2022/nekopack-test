FROM sandy1709/catuserbot:slim-buster

#clonning repo 
RUN git clone https://github.com/ashty-drone/nekopack.git /root
#working directory 
WORKDIR /root

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/bin:$PATH"

CMD ["bash","start"]
