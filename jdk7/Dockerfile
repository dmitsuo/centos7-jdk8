FROM davimss/centos-base

ENV JAVA_MAJOR_VERSION 7
ENV JAVA_UPDATE 80

ENV JDK_FILE jdk-${JAVA_MAJOR_VERSION}u${JAVA_UPDATE}-linux-x64.tar.gz
ENV JDK_DIR jdk1.${JAVA_MAJOR_VERSION}.0_${JAVA_UPDATE}
ENV JDK_BASE_DOWNLOAD_URL https://www.dropbox.com/s/y7vg3lkw3a6s2xh
ENV JDK_DOWNLOAD_URL ${JDK_BASE_DOWNLOAD_URL}/${JDK_FILE}?dl=1
ENV JAVA_HOME /opt/jdk

RUN set -x \
    && curl -o $JDK_FILE -L ${JDK_DOWNLOAD_URL} \
    && tar -xvf $JDK_FILE \
    && rm $JDK_FILE \
    && ln -s /opt/${JDK_DIR} ${JAVA_HOME}