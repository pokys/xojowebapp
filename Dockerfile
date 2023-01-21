#BASE IMAGE
FROM ubuntu:20.04


#INSTALL REQUIRED LIBRARIES
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y libunwind8 libglib2.0 locales fontconfig -y && echo "yes" | apt install ttf-mscorefonts-installer -y && fc-cache -f -v
RUN locale-gen cs_CZ.UTF-8
RUN locale-gen en_US.UTF-8

# Set the locale
ENV LANG cs_CZ.UTF-8
ENV LANGUAGE cs_CZ.UTF-8
ENV LC_ALL cs_CZ.UTF-8

ENV LC_CTYPE="cs_CZ.UTF-8"
ENV LC_NUMERIC=cs_CZ.UTF-8
ENV LC_TIME=cs_CZ.UTF-8
ENV LC_COLLATE="cs_CZ.UTF-8"
ENV LC_MONETARY=cs_CZ.UTF-8
ENV LC_MESSAGES="cs_CZ.UTF-8"
ENV LC_PAPER=cs_CZ.UTF-8
ENV LC_NAME=cs_CZ.UTF-8
ENV LC_ADDRESS=cs_CZ.UTF-8
ENV LC_TELEPHONE=cs_CZ.UTF-8
ENV LC_MEASUREMENT=cs_CZ.UTF-8
ENV LC_IDENTIFICATION=cs_CZ.UTF-8

RUN update-locale LC_ALL=cs_CZ.UTF-8 LANG=cs_CZ.UTF-8
RUN dpkg-reconfigure locales

# DEFAULT EXECUTABLE NAME
ENV MY_APP my_application


#ADD APPLICATION TO DOCKER IMAGE


#EXPOSE PORT AND RUN APPLICATION
EXPOSE 8085
WORKDIR /app

CMD ["sh", "-c", "/app/${MY_APP}"]
