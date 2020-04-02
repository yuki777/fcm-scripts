# subscribe.sh
source .env
curl -s -XPOST --header "Authorization: key=${FIREBASE_SERVER_KEY}" \
  --header "Content-type: application/json" \
  --header "Content-Length: 0" \
  "https://iid.googleapis.com/iid/v1/${IID_TOKEN}/rel/topics/${TOPIC_NAME}"
./get.sh
