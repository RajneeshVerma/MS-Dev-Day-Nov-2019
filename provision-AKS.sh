az login # Not required in Azure Cloud Shell
az group create --name atDevDayWorkshopRG --location eastus

az provider register --namespace Microsoft.Network
az provider register --namespace Microsoft.Compute
az provider register --namespace Microsoft.Storage

az aks create --resource-group atDevDayWorkshopRG \
    --name atDevDayCluster \
    --node-count 1 \
    --vm-set-type VirtualMachineScaleSets \
    --enable-cluster-autoscaler \
    --generate-ssh-keys \
    --node-vm-size Standard_D2_v3 \
    --min-count 1 \
    --max-count 2
az aks update --resource-group atDevDayWorkshopRG --name atDevDayCluster --disable-cluster-autoscaler