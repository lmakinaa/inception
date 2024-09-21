#!/bin/sh

sed -i "s/admin_user = admin/admin_user = $GRAFANA_ADMIN_USER/" /grafana-v11.2.0/conf/defaults.ini;
sed -i "s/admin_password = admin/admin_password = $GRAFANA_ADMIN_PASS/" /grafana-v11.2.0/conf/defaults.ini;

/grafana-v11.2.0/bin/grafana server > /dev/null