FROM busybox
MAINTAINER Barabanov Mikhail <Barabanov.Mikle@gmail.com> https://github.com/yfer
ADD . /
ENV VTIGER_SOURCE http://sources.pinstudio.ru/salesplatform-vtigercrm-6.3.0-201507.tar.gz
RUN sh script.sh ${VTIGER_SOURCE}
# WORKDIR /app
# VOLUME ["logs", "modules", "storage", "test", "user_privileges", "tabdata.php", "parent_tabdata.php", "config.inc.php"]
VOLUME /app