#!/usr/bin/env bash
gcloud functions deploy helloGCSGeneric \
                        --runtime nodejs6 \
                        --trigger-resource YOUR_TRIGGER_BUCKET_NAME \
                        --trigger-event google.storage.object.finalize

# ==================== Trigger Events ======================== #
# google.storage.object.finalize -> a new object is created or overwritten.
# google.storage.object.delete   -> an object is permanently deleted.
# google.storage.object.archive  -> a live version of an object is archived or deleted.
# google.storage.object.metadataUpdate -> the metadata of an existing object changes.