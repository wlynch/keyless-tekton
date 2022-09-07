cosign verify-attestation \
	${IMAGE} \
	--certificate-identity=https://kubernetes.io/namespaces/tekton-chains/serviceaccounts/tekton-chains-controller \
	--certificate-oidc-issuer="https://container.googleapis.com/v1/projects/wlynch-chainguard/locations/us-central1-c/clusters/oss-demo" \
	--type slsaprovenance
