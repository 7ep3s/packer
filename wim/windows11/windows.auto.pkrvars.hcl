// VM hardware specs
vm_name         = "W11-packer"
vm_cpus         = "4"
vm_memory       = "4096"
vm_disk_size    = "65536"
switch_name     = "VMSWITCH"
dynamic_memory  = "true"
secure_boot     = "true"
tpm             = "true"
generation      = "2" 
headless        = "false"
skip_export     = "false"
enable_virtualization_extensions = "false"
guest_additions_mode = "disable"

// Use the NAT Network
// vm_network      = "VMnet8"

// WinRM 
winrm_username  = "admin"
winrm_password  = "password"

// Removeable media
win_iso         = "c:/iso/Windows11.iso"
// In Powershell use the "get-filehash" command to find the checksum of the ISO
win_checksum    = "68DBF275D7D84A1F5162355109026C48C02B20A9D5E1D59CDAA4EDB361C9CAEF"