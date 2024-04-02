#BASE IMAGE
FROM ubuntu:22.04


#INSTALL REQUIRED LIBRARIES
ENV DEBIAN_FRONTEND noninteractive


RUN apt-get clean && apt-get update && apt-get install -y libunwind8 libglib2.0 locales
# microsoft ttfonts
RUN echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | debconf-set-selections
RUN apt-get install -y --no-install-recommends fontconfig ttf-mscorefonts-installer
RUN fc-cache -f -v


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

ENV TZ="Europe/Prague"

RUN update-locale LC_ALL=cs_CZ.UTF-8 LANG=cs_CZ.UTF-8
RUN dpkg-reconfigure locales

# DEFAULT EXECUTABLE NAME
ENV MY_APP my_application


#ADD APPLICATION TO DOCKER IMAGE


#EXPOSE PORT AND RUN APPLICATION
EXPOSE 8085
WORKDIR /app

CMD ["sh", "-c", "/app/${MY_APP}"]
