FROM ubuntu:18.04
#Setup Environment
ENV BOTFileName bot.py
ENV Dependancies "pytz simplejson requests pythonping iperf3" 
VOLUME ["/mnt/bot"]
WORKDIR /mnt/bot

#Install Deps
RUN apt-get update && apt-get -y install sudo
RUN sudo apt install -y python3 python3-pip iperf3
RUN sudo apt install -y curl
RUN sudo apt update
RUN pip3 install discord.py
RUN pip3 install ${Dependancies}

RUN echo "Installed Dependancies"

#Run Bot
CMD python3 ${BOTFileName}
