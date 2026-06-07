## 1.132.1

- Fixed local builds on Supervisor 2026.04.0+ by using an explicit Home Assistant base image.
- Updated the image build to use current Home Assistant multi-arch base images and `BUILD_ARCH`.
- Moved vmagent temporary data to the add-on `/data` volume.
- Disabled the host port by default; ingress remains enabled for the web UI.

## 1.132.0

- Updated to VictoriaMetrics Agent 1.132.0

## 1.126.0

- Updated to VictoriaMetrics Agent 1.126.0

## 1.122.0

- Updated to VictoriaMetrics Agent 1.122.0

## 1.121.0

- Updated to VictoriaMetrics Agent 1.121.0
- Starting from this release I will use the same release version as bundled VMAgent, adding an extra `.1` in case I need patch releases

## 1.8.20.8

- Updated to VictoriaMetrics Agent 1.120.0

## 1.8.20.7

- Updated to VictoriaMetrics Agent 1.119.0

## 1.8.20.6

- Updated to VictoriaMetrics Agent 1.117.1

## 1.8.20.5

- Updated to VictoriaMetrics Agent 1.116.0

## 1.8.20.4

- Updated to VictoriaMetrics Agent 1.115.0

## 1.8.20.3

- Updated to VictoriaMetrics Agent 1.113.0
- Optionally support scraping for [Node Exporter](https://github.com/loganmarchione/hassos-addons/tree/main/prometheus_node_exporter)

## 1.8.20.2

- Updated to VictoriaMetrics Agent 1.112.0

## 1.8.20.1

- Updated to VictoriaMetrics Agent 1.97.1 (LTS)

## 1.8.20

- Updated to VictoriaMetrics 1.91.2

## 1.8.19

- Updated to VictoriaMetrics 1.91.0

## 1.8.18

- Added support for Prometheus scraping job parameters (interval, timeout)

## 1.8.17

- Added setting for basicAuth/httpAuth and prometheus scrape (thanx to dergeberl)
- Updated to VictoriaMetrics 1.88.1
- Updated documentation

## 1.8.15

- Updated to VictoriaMetrics 1.86.1
- Updated documentation

## 1.8.14

- Updated to VictoriaMetrics 1.83.1

## 1.8.13

- Added additionalArgs parameter to allow passing additional options to VictoriaMetrics

## 1.8.12

- Fixed retention scheme was not passed to victoria metrics leading to a default retention of 1m

## 1.8.11

- Added support for amd64 on linux

## 1.8.10

- Updated documentation and added Grafana tips
- Replace binary from docker image victoriametrics/victoria-metrics:v1.81.2 with [official build](https://github.com/VictoriaMetrics/VictoriaMetrics/releases/download/v1.81.2/victoria-metrics-linux-arm-v1.81.2.tar.gz)

## 1.8.9

- Changed configuration files
- Disabled host network
- Disabled Prometheus scraper (use InfluxDB integration instead)
- Disabled Apparmor configuration

## 1.8.1

- Initial setup with Victoria Metrics v1.81.2 and Prometheus scraper
