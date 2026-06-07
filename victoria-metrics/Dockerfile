FROM ghcr.io/home-assistant/base:3.23

SHELL ["/bin/ash", "-o", "pipefail", "-c"]

# Copy data for add-on
COPY start-vmagent /
COPY prometheus.tpl /
WORKDIR /data

ARG BUILD_ARCH
ARG BUILD_VERSION=dev
ARG TARGETARCH
ARG VICTORIAMETRICS_VERSION=1.132.0

LABEL \
    io.hass.version="${BUILD_VERSION}" \
    io.hass.type="app" \
    io.hass.arch="${BUILD_ARCH}" \
    org.opencontainers.image.source="https://github.com/lapo-luchini/homeassistant-addon-vmagent"

RUN \
    apk add --no-cache \
        ca-certificates \
        jq \
        tar \
        wget \
    && HA_ARCH="${BUILD_ARCH:-${TARGETARCH}}" \
    && case "${HA_ARCH}" in \
        amd64) VM_ARCH="amd64" ;; \
        aarch64|arm64) VM_ARCH="arm64" ;; \
        *) echo "Unsupported architecture: ${HA_ARCH}" >&2; exit 1 ;; \
    esac \
    && VM_VERSION="v${VICTORIAMETRICS_VERSION}" \
    && wget -qO /tmp/vmutils.tar.gz \
        "https://github.com/VictoriaMetrics/VictoriaMetrics/releases/download/${VM_VERSION}/vmutils-linux-${VM_ARCH}-${VM_VERSION}.tar.gz" \
    && tar -xzf /tmp/vmutils.tar.gz -C / vmagent-prod \
    && rm -f /tmp/vmutils.tar.gz \
    && chmod a+x /vmagent-prod /start-vmagent

CMD ["/start-vmagent"]
