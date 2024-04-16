source ./upload.local.sh
./build.sh

curl http://localhost:37840/etapi/notes/$VANILLA_NOTE_ID/content \
  --header "Authorization: $ETAPI_TOKEN" \
  --header "Content-Type: text/plain" \
  --upload-file vanilla.css

curl http://localhost:37840/etapi/notes/$MINT_Y_NOTE_ID/content \
  --header "Authorization: $ETAPI_TOKEN" \
  --header "Content-Type: text/plain" \
  --upload-file mint-y.css

if [ $? -eq 0 ]; then
  echo "Upload successful. Refresh Trilium to see the updated theme."
else
  echo "Upload failed."
fi