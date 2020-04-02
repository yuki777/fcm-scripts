# get.sh
source .env
curl -s --header "Authorization: key=${FIREBASE_SERVER_KEY}" "https://iid.googleapis.com/iid/info/${IID_TOKEN}?details=true" | jq .
