apiVersion: azconfig.io/v1beta1
kind: AzureAppConfigurationProvider
metadata:
  name: aks-store-demo-appconfigs
  namespace: dev
spec:
  endpoint: ${APP_CONFIG_ENDPOINT}
  target:
    configMapName: ai-service-configmap 
  keyValues: 
    keyVaults:
      target:
        secretName: ai-service-secrets
      auth:
        managedIdentityClientId: ${NODE_VMSS_MANAGED_CLIENT_ID}