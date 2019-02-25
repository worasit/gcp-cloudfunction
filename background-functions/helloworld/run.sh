#!/usr/bin/env bash
gcloud functions call nongped-cloud-function-learning-01 \
                      --region=us-central1 \
                      --data '{"message": "Nongped Test Execution 01"}'