# Home Assistant Add-on to send to VictoriaMetrics Time Series Database

If you are looking for an efficient and easy to use way for long term storage of your Home Assistant data - just use VictoriaMetrics.

This add-on makes it easy to scrape (i.e. fetch) metrics locally, cache them in a temporary database, and send them to your centralized Victoria Metrics Time Series Database as soon as is is reachable, thus allowing to have full data even if the database is down or unreachable at times.

This add-on runs on ARM64 systems like Raspberry Pi 4 and many others (armhf, armv7, aarch64, amd64).

## Replacement for InfluxDB and Prometheus

VictoriaMetrics Time Series Database is 100% compatible with the Prometheus and InfluxDB line protocol. So Homeassistant is able to connect to VictoriaMetrics with the InfluxDB integration. In Grafana you can use the Prometheus or InfluxDB data source to use your data in your Victoria Metrics database.

## Much better long term storage

VictoriaMetrics offers an ultra efficient sompression for data storage, is highly optimized for time series data and has low RAM usage. So this is the perfect solution for long term storage of high amounts of data like all sensor values of your smart home.

There are many reasons to switch to Victoria Metrics. Compared to other products Victoria Metrics offers:

* better compression
* better performance
* lower RAM usage
* fully open source
* outperfomes other time series databases
* ease of use

[Victoria Metrics on GitHub](https://github.com/VictoriaMetrics/VictoriaMetrics)

> VictoriaMetrics wins InfluxDB and Timescale in all the queries by a margin of up to 20x. It especially excels at heavy queries, which scan many millions of datapoints across thousands of distinct timeseries. More info here 
[VictoriaMetrics vs. InfluxDB vs. Timescale](https://valyala.medium.com/when-size-matters-benchmarking-victoriametrics-vs-timescale-and-influxdb-6035811952d4)

This add-on continues the work of Andreas Habel whose [hassio-victoriametrics](https://github.com/Exceptionfault/hassio-victoriametrics) add-on was not updated since 2021.
I developed this mainly for my purpose running VictoriaMetrics on my Raspberry Pi 4 running Home Assistant Operating System.
The direction of InfluxDB 2.0 was not what I wanted in combination with Grafana so VictoriaMetrics Time Series Database was the best choice.
