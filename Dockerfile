from grafana/promtail

Add https://github.com/hairyhenderson/gomplate/releases/download/v3.6.0/gomplate_linux-amd64 /usr/bin/gomplate
COPY promtail.yaml.tmpl /etc/promtail
COPY entrypoint.sh /
RUN chmod 755 /usr/bin/gomplate /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
