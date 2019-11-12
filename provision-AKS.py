from azure.cli.core import get_default_cli

# these are python snippets, youll probably need to translate these to az cli commands and run in powershell instead

cli = get_default_cli()

cli.invoke([
    'login'
])

cli.invoke([
    'group', 'create',
    '--name', myResourceGroup,
    '--location', location
])

cli.invoke([
    'aks', 'create', 
    '--resource-group', myResourceGroup,
    '--name', myAKSCluster,
    '--service-principal', servicePrincipal,
    '--client-secret', clientSecret,
    '--node-count', '2',
    '--vm-set-type', 'VirtualMachineScaleSets',
    '--load-balancer-sku', 'standard',
    '--enable-cluster-autoscaler',
    '--generate-ssh-keys',
    '--node-vm-size', vmSKU,
    '--min-count', minNodes,
    '--max-count', maxNodes,
])

cli.invoke([
    'aks', 'update',
    '--resource-group', myResourceGroup,
    '--name', myAKSCluster,
    '--disable-cluster-autoscaler'
    
])