cosign download attestation ${IMAGE} | jq .payload -r | base64 -d | jq .
