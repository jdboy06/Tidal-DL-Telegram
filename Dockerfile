RUN apt-get update && apt-get upgrade -y
RUN apt -qq update --fix-missing && \
    apt -qq install -y mediainfo
RUN curl https://rclone.org/install.sh | bash 
RUN apt-get -qq install -y python3.9 python3-pip ffmpeg git
RUN apt-get -qq install -y g++ gdb make ninja-build rsync zip
RUN apt-get -qq install mkvtoolnix

# For wine64 and wine32
RUN apt-get -qq install wine
RUN dpkg --add-architecture i386 
RUN apt-get -qq -y install winbind wine64 wget
