az login # Not required in Azure Cloud Shell
az group create --name <a_resource_group_name> --location <a_region_name>
az aks create --resource-group <the_resource_group_name> \
    --name <a_cluster_name> \
    --node-count <an_integer> \
    --vm-set-type VirtualMachineScaleSets \
    --load-balancer-sku standard \
    --enable-cluster-autoscaler \
    --generate-ssh-keys \
    --node-vm-size <a_vm_sku> \
    --min-count <a_small_integer> \
    --max-count <a_larger_integer> \
az aks update --resource-group <the_resource_group_name> --name <the_cluster_name> --disable-cluster-autoscaler