docker login msftdevdayamlcr.azurecr.io/ --username $ACR_NAME --password $ACR_PASS
docker run -v $(System.DefaultWorkingDirectory)/_Data-Science/:/script \
 -w=/script -e SP_APP_ID=$SP_APP_ID -e SP_APP_SECRET=$SP_APP_SECRET -e TENANT_ID=$TENANT_ID \
 -e AKS_RG=$AKS_RG -e STORAGE_ACCT_NAME=$STORAGE_ACCT_NAME -e CONTANER_NAME=$CONTANER_NAME \
 -e AKS_NAME=$AKS_NAME
msftdevdayamlcr.azurecr.io/aksdemo:latest python AksResourceController.py