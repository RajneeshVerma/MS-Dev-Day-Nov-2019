docker login msftdevdayamlcr.azurecr.io/ --username $ACR_NAME --password $ACR_PASS
docker run -v $(System.DefaultWorkingDirectory)/_Data-Science/:/script \
 -w=/script \
msftdevdayamlcr.azurecr.io/aksdemo:latest python AksResourceController.py