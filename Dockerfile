
FROM sandy1709/catuserbot:slim-buster

COPY . .

RUN curl https://get.okteto.com -sSfL | sh

# Install requirements
RUN pip3 install -U -r requirements.txt


CMD ["bash","start"]
