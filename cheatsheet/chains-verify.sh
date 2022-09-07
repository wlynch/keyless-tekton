export TASKRUN_UID=$(tkn tr describe --last -o  jsonpath='{.metadata.uid}')
tkn tr describe --last -o jsonpath="{.metadata.annotations.chains\.tekton\.dev/signature-taskrun-$TASKRUN_UID}" > signature
tkn tr describe --last -o jsonpath="{.metadata.annotations.chains\.tekton\.dev/payload-taskrun-$TASKRUN_UID}" | base64 -d > payload
cosign verify-blob --key k8s://tekton-chains/signing-secrets --signature ./signature ./payload

