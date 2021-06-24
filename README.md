# Setting up Azure

az group create -g rg-azure-tf -l westeurope
az storage account create -n saazuretfcoldstarts -g rg-azure-tf -l westeurope --sku Standard_LRS
az storage container create -n terraform-state --account-name saazuretfcoldstarts
