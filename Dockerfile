#Image of the php-apache container that will hold the symfony application
FROM ubuntu:16.04

# Set environment variables.
ENV HOME /root

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

#Installation of apache
RUN apt-get update && \
	apt-get install -y apache2  && \
	rm -rf /var/lib/apt/lists/*

#Installation of php and git
RUN apt-get update && \
	apt-get install -y php libapache2-mod-php  \
	php-cli php-mysqlnd php-xml curl php-curl php-zip git acl && \
	rm -rf /var/lib/apt/lists/*

#Installation of composer
RUN rm -rf /var/cache/apk/* && rm -rf /tmp/*

RUN curl --insecure https://getcomposer.org/composer.phar -o /usr/bin/composer && \
	chmod +x /usr/bin/composer

#Adding the application code
ADD ctest_apps /app

# Define working directory.
WORKDIR /app

EXPOSE 80
