#!/bin/sh

TEMPLATE=${1:-"/etc/promtail/promtail.yaml.tmpl"}; shift

/usr/bin/gomplate -f $TEMPLATE -o /etc/promtail/promtail.yaml
/usr/bin/promtail -config.file=/etc/promtail/promtail.yaml $@
