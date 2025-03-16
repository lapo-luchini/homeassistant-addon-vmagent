ARG BUILD_FROM
FROM $BUILD_FROM

# Copy data for add-on
COPY start-vmagent /
COPY prometheus.tpl /
WORKDIR /share/vmagent-data
ARG VERSION=v1.113.0

RUN /bin/bash -c 'set -ex && \
    ARCH=$(uname -m) && \
    if [ "$ARCH" == "x86_64" ]; then \
        wget https://github.com/VictoriaMetrics/VictoriaMetrics/releases/download/$VERSION/vmutils-linux-amd64-$VERSION.tar.gz -qO- | tar xvz -C / vmagent-prod; \
    elif [[ "$ARCH" == "arm"* ]]; then \
        wget https://github.com/VictoriaMetrics/VictoriaMetrics/releases/download/$VERSION/vmutils-linux-arm-$VERSION.tar.gz -qO- | tar xvz -C / vmagent-prod; \
    elif [ "$ARCH" == "aarch64" ]; then \
        wget https://github.com/VictoriaMetrics/VictoriaMetrics/releases/download/$VERSION/vmutils-linux-arm64-$VERSION.tar.gz -qO- | tar xvz -C / vmagent-prod; \
    else \
        echo "Unsupported architecture $ARCH"; \
        return -1; \
    fi'

RUN chmod a+x /vmagent-prod
RUN chmod a+x /start-vmagent

CMD [ "/start-vmagent"]
