FROM debian

COPY start.sh /home/start.sh

RUN apt-get update \
    && apt-get -y install vlc dissy \
    && chmod +x /home/start.sh

#####
## Make vlc executable by root (https://unix.stackexchange.com/questions/125546/how-to-run-vlc-player-in-root)
#####
RUN needle=$(objdump -d /usr/bin/vlc | grep euid | tail -1 | awk '{print "\\x"$2"\\x"$3"\\x"$4"\\x"$5"\\x"$6}') \
    && sed -ir "s/$needle/\xb8\x01\x00\x00\x00/" /usr/bin/vlc

EXPOSE 80

CMD /home/start.sh
