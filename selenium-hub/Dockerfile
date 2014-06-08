# Selenium Hub

FROM ubuntu

RUN dpkg-divert --local --rename --add /sbin/initctl && ln -s /bin/true /sbin/initctl

RUN apt-get install -y software-properties-common python curl
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update

RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get install oracle-java7-installer -y

RUN wget -P /opt https://selenium.googlecode.com/files/selenium-server-standalone-2.37.0.jar

EXPOSE 4444

CMD ["java", "-jar", "/opt/selenium-server-standalone-2.37.0.jar", "-role", "hub"]
