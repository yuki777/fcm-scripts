# send.sh
source .env
curl \
        -s \
        -d "{ \
        \"to\": \"/topics/${TOPIC_NAME}\", \
        \"priority\": \"high\", \
        \"notification\": { \
            \"title\": \"テストTitle\", \
            \"body\": \"テストBody\", \
            \"icon\": \"https://via.placeholder.com/60x60.png?text=TEST\", \
            \"image\": \"https://via.placeholder.com/480x360.png?text=TEST\", \
            \"click_action\": \"${CLICK_ACTION}\" \
        } \
        }" \
        -H "Authorization: key=${FIREBASE_SERVER_KEY}" \
        -H "Content-type: application/json" \
        https://fcm.googleapis.com/fcm/send
