#!/bin/sh
if [ ! -f UUID ]; then
  UUID="83e7adde-ac1f-4bb2-af8c-88af3c3a6e76"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

