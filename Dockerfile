FROM jsurf/rpi-raspbian
EXPOSE 10110
RUN apt-get update 
RUN apt-get install wget
RUN wget http://www.stripydog.com/download/kplex_1.3.4-1_armhf.deb 
RUN dpkg -i ./kplex_1.3.4-1_armhf.deb
COPY ./kplex.conf /etc
ENTRYPOINT ["/usr/bin/kplex"]
