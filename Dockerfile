FROM sandy1709/catuserbot:slim-buster

COPY . .

RUN curl https://get.okteto.com -sSfL | sh

# Install requirements
RUN python3 -m ensurepip --default-pip &&\
    python3 -m pip install --upgrade pip wheel setuptools &&\
    python3 -m pip install -r requirements.txt

CMD ["bash","start"]
