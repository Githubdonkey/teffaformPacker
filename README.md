# teffaformPacker
testing

# Ubuntu 18.04 for testing
Launch AWS AMI

WSL for windows
  Windows key microsoft store
  
# Install
  packer terraform dos2unix unzip
  
# Git Modules in Package Sub-directories
git::https://example.com/network.git//modules/vpc
s3::https://s3-eu-west-1.amazonaws.com/examplecorp-terraform-modules/network.zip//modules/vpc

# command line variables
terraform apply -var="image_id=ami-abc123" 
terraform apply -var='image_id_list=["ami-abc123","ami-def456"]' 
terraform apply -var='image_id_map={"us-east-1":"ami-abc123","us-east-2":"ami-def456"}' 

# commanline pass variable file
terraform apply -var-file="testing.tfvars"

# troubleShooting
git repo not refreshing: terraform get -update

# Packer

*Windows 2016 Sysprep Commands - For Amazon Windows AMIs Only
> {
    "type": "powershell",
    "inline": [
      "C:/ProgramData/Amazon/EC2-Windows/Launch/Scripts/InitializeInstance.ps1 -Schedule",
      "C:/ProgramData/Amazon/EC2-Windows/Launch/Scripts/SysprepInstance.ps1 -NoShutdown"
    ]

}

