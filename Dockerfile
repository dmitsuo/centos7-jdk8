FROM davimss/centos-base

USER root

ENV JDK_FILE jdk-8u172-linux-x64.tar.gz

RUN set -x \
    && curl -o $JDK_FILE -L https://www.dropbox.com/s/wtfluk6ppp2ri7z/jdk-8u172-linux-x64.tar.gz?dl=1 \
    && tar -xvf $JDK_FILE \
    && rm $JDK_FILE \
    && chmod -Rf 755 /opt \
    && chown caos:caos -Rf /opt

USER caos

ENV JAVA_HOME /opt/jdk1.8.0_172

CMD /bin/bash