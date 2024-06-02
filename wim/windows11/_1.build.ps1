<#
  Description: Download the latest version of Hashicorp Packer version and create a Windows 11 VM in Hyper-V
  Created by: Ivo Beerens www.ivobeerens.nl
  Change Log: Augustus 29, 2023 v1.0 Final version by Ivo Beerens
#>

# Enable TLS 1.2
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
# Speed up the invoke-webrequest command
$ProgressPreference = 'SilentlyContinue'

# Variables
$downloadfolder = "C:\temp\" # Packer location installed
$win11_downloadfolder = "C:\Temp\packer-main\hyper-v\windows11\"
$packer_config = "windows.json.pkr.hcl" #Packer config file
$packer_variable = "windows.auto.pkrvars.hcl" # Packer variable file
#$env:winrm_admin = "admin"
#$env:winrm_password = "password"
$github = "https://github.com/7ep3s/packer/archive/refs/heads/main.zip"
$product = "packer"
$packer_uri = "https://developer.hashicorp.com/packer/downloads"

# Check if the temp folder exist
If(!(test-path -PathType container $downloadfolder))
    {
      New-Item -ItemType Directory -Path $downloadfolder
}

# Go to the Packer download folder
Set-Location $downloadfolder

# Download Github files
Invoke-WebRequest -Uri $github -OutFile ${downloadfolder}packer.zip
Expand-Archive ${downloadfolder}packer.zip -DestinationPath $downloadfolder -Force

# Remove zip file
Remove-Item -Path ${downloadfolder}packer.zip 

# Download the latest version of Packer
winget install hashicorp.packer

# Go to the Packer download folder
Set-Location $win11_downloadfolder