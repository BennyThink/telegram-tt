#!/bin/bash

cat << EOF >> .env
NODE_ENV=production
TELEGRAM_API_ID=$TELEGRAM_API_ID
TELEGRAM_API_HASH=$TELEGRAM_API_HASH
BASE_URL=$BASE_URL
EOF

npm run build:production

cd dist
rm -f *.map build-stats.json statoscope-report.html
rm -rf img-apple*
