#!/bin/sh

sed -i "s#UUID#$UUID#g;s#VMESS_WSPATH#$VMESS_WSPATH#g;s#VLESS_WSPATH#$VLESS_WSPATH#g" /etc/v2ray/config.json
sed -i "s#VMESS_WSPATH#$VMESS_WSPATH#g;s#VLESS_WSPATH#$VLESS_WSPATH#g;s#DOMAIN_NAME#$DOMAIN_NAME#g" /etc/caddy/Caddyfile

/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
