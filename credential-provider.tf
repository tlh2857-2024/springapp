apiVersion: kubelet.config.k8s.io/v1
kind: CredentialProviderConfig
providers:
  - name: ecr-credential-provider
    matchImages:
      - "800469791911.dkr.ecr.*.amazonaws.com"
    defaultCacheDuration: "0"
    apiVersion: credentialprovider.kubelet.k8s.io/v1
