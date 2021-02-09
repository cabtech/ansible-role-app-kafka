----
# ansible-role-app-kafka
Installs Apache Kafka

## Requied variables
| Name | Type | Comment |
| ---- | ---- | ------- |
| kafka_broker_id | integer | each Kafka broker to have a unique ID |
| kafka_zookeeper_connections | string | zoo1:port1,zoo2:port2,.... |

Port is generally 2181 for Zookeeper

## Default variables
| Name | Type | Value | Comment |
| ---- | ---- | ----- | ------- |
| kafka_config_dir | unixPath | ${kafka_install_dir}/config ||
| kafka_full_install | Boolean | true | controls whether to install config and services |
| kafka_install_dir | unixPath | /opt/kafka ||
| kafka_internet_timeout | integer | 15 ||
| kafka_logs_dir | unixPath | ${kafka_install_dir}/logs ||
| kafka_scala_version | string | '2.11' | used to derive tarball name |
| kafka_site | URL | `https://downloads.apache.org` ||
| kafka_staging_dir | unixPath | /var/tmp/kafka ||
| kafka_svc_enabled | Boolean | true | whether to start the service at reboot |
| kafka_svc_state | Boolean | started | whether to start the service now |
| kafka_tarball | fileName | derived ||
| kafka_url | URL | derived ||
| kafka_user | string | kafka | user to run Kafka as |
| kafka_version | string | '2.3.1' ||

## Todo
- put Kafka logs in a separate volume

****
