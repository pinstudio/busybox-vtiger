FROM busybox
MAINTAINER Barabanov Mikhail <Barabanov.Mikle@gmail.com> https://github.com/yfer
ENV VTIGER_SOURCE http://sources.pinstudio.ru/salesplatform-vtigercrm-6.3.0-201507.tar.gz
RUN  wget -O vtiger.tar.gz ${VTIGER_SOURCE} && \
     tar zxf vtiger.tar.gz && \
     mv /vtigercrm /app && \
     rm /vtiger.tar.gz && \
     chown -R www-data:www-data /app && \
     find /app -type f -exec chmod 644 {} \; && \
     find /app -type d -exec chmod 755 {} \;
# WORKDIR /app
# VOLUME ["logs", "modules", "storage", "test", "user_privileges", "tabdata.php", "parent_tabdata.php", "config.inc.php"]
VOLUME /app