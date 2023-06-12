global:
  scrape_interval: 15s
  scrape_timeout: 60s
  external_labels:
    source: hassio

scrape_configs:
  - job_name: 'vmagent'
    static_configs:
      - targets:
          - localhost:8429
        labels:
          instance: '{{.homeassistantUrl | regex_replace(":[0-9]+$", ":8429")}}'

  - job_name: 'home-assistant'
    scrape_interval: '{{.prometheusScrapeInterval}}'
    scrape_timeout: '{{.prometheusScrapeTimeout}}'
    metrics_path: /api/prometheus
    authorization:
      credentials: "{{.token}}"
    scheme: {{ .scheme }}
    static_configs:
      - targets:
          - '{{.homeassistantUrl}}'
