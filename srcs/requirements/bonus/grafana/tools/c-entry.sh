#!/bin/sh

sed -i "s/admin_user = admin/admin_user = $GRAFANA_ADMIN_USER/" conf/defaults.ini;
sed -i "s/admin_password = admin/admin_password = $GRAFANA_ADMIN_PASS/" conf/defaults.ini;

/grafana-v11.2.0/bin/grafana server > /dev/null