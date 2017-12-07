FROM ubuntu:latest

ARG USER
ARG UID

RUN apt-get --assume-yes update && \
	apt-get --assume-yes install lsb-release wget apt-transport-https xterm && \
	echo "deb https://packages.atlassian.com/debian/stride-apt-client $(lsb_release -c -s) main" > /etc/apt/sources.list.d/atlassian-stride.list && \
	wget -O - https://packages.atlassian.com/api/gpg/key/public | apt-key add - && \
	apt-get --assume-yes update && \
	apt-get --assume-yes install stride libxss1 libgconf-2-4 libnss3 libasound2 && \
	useradd -u $UID -m $USER

RUN mkdir -p /home/$USER/.config/Stride && \
	chown -R $USER:$USER /home/$USER/.config

USER $USER

CMD stride