#!/bin/bash
cat > /root/v2ray/config.json <<EOF 
{
"inbounds": [
{
"port": 1080,
"protocol": "vmess",
"settings": {
"clients": [
{
"id": "$UID",
"security": "$SECURITY",
"alterId": $ALTERID
}
]
}
}
],
"outbounds": [
{
"protocol": "freedom",
"settings": {}
}
]
}
EOF
