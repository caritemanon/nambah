FROM nikolaik/python-nodejs:python3.9-nodejs18
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
COPY . /app/
WORKDIR /app/
RUN git clone https://github.com/naya1503/Naya-Userbot
RUN cd cd Naya-Userbot && pip3 install -U -r re*/st*/optional-requirements.txt && pip3 install -U -r requirements.txt
CMD cd cd Naya-Userbot && bash start
