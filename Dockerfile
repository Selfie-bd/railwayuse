FROM paman7647/amanpandey:speedo-buster-3.9
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ffmpeg git
RUN pip install -r https://raw.githubusercontent.com/TamilBots/TamilUserBot/master/requirements.txt
COPY . .
COPY ./Tamil.sh .
ADD ./Tamil.sh .
CMD ["bash","Tamil.sh"]
# Team TamilBots 
