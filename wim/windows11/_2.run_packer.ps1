<#
  Description: Download the latest version of Hashicorp Packer version and create a Windows 11 VM in Hyper-V
  Created by: Ivo Beerens www.ivobeerens.nl
  Change Log: Augustus 29, 2023 v1.0 Final version by Ivo Beerens
#>

# Show Packer Version
packer -v

# Download Packer plugins
packer init "${$win11_downloadfolder}${packer_config}"

# Packer Format configuration files (.pkr.hcl) and variable files (.pkrvars.hcl) are updated.
packer fmt -var-file="${$win11_downloadfolder}{$packer_variable}" "${$win11_downloadfolder}${packer_config}"

# Packer validate
packer validate .

# Packer build
# packer build -force -var-file="${$win11_downloadfolder}${packer_variable}" -var "winrm_username=$env:winrm_admin" -var "winrm_password=$env:winrm_password" "${$win11_downloadfolder}${packer_config}"
packer build -force -var-file="${$win11_downloadfolder}${packer_variable}" "${$win11_downloadfolder}${packer_config}"