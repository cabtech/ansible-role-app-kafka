# ansible-role-app-kafka
Installs Apache Kafka

## Default variables
| Name | Type | Value | Comment |
| ---- | ---- | ----- | ------- |
| kafka_config_dir       | unixPath | `${kafka_install_dir}`/config ||
| kafka_full_install     | Boolean  | true | controls whether to install config and services |
| kafka_install_dir      | unixPath | `/opt/kafka` ||
| kafka_internet_timeout | integer  | 15 ||
| kafka_logs_dir         | unixPath | `${kafka_install_dir}`/logs ||
| kafka_scala_version    | string   | '2.11' | used to derive tarball name |
| kafka_staging_dir      | unixPath | `/var/tmp/kafka` ||
| kafka_svc_enabled      | Boolean  | true    | whether to start the service at reboot |
| kafka_svc_state        | Boolean  | started | whether to start the service now |
| kafka_tarball          | fileName | `kafka_${kafka_scala_version}-${kafka_version}.tgz` | derived |
| kafka_url              | URI      | `https://downloads.apache.org/kafka/${kafka_version}/${kafka_tarball}` | derived |
| kafka_user             | string   | kafka   | user to run Kafka as |
| kafka_version          | string   | '2.3.1' ||
...
