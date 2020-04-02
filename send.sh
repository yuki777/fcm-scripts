# send.sh
source .env
curl \
        -s \
        -d "{ \"to\": \"/topics/${TOPIC_NAME}\", \"priority\": \"high\", \"notification\": { \"title\": \"titleタイトル\", \"body\": \"bodyボディ\", \"click_action\": \"${CLICK_ACTION}\" } }" \
        -H "Authorization: key=${FIREBASE_SERVER_KEY}" \
        -H "Content-type: application/json" \
        https://fcm.googleapis.com/fcm/send
