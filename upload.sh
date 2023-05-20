source ./upload.local.sh
curl http://localhost:37840/etapi/notes/$NOTE_ID/content \
  --header "Authorization: $ETAPI_TOKEN" \
  --header "Content-Type: text/plain" \
  --upload-file style.css