#$winget_path = ls "C:\Program Files\windowsapps\Microsoft.DesktopAppInstaller*x64*8wekyb3d8bbwe" | select -ExpandProperty fullname

#& $winget_path\winget.exe install Google.Chrome --silent --accept-package-agreements --accept-source-agreements

#& $winget_path\winget.exe install Valve.Steam --silent --accept-package-agreements --accept-source-agreements

winget install Google.Chrome --silent --accept-package-agreements --accept-source-agreements --source winget

winget install Valve.Steam --silent --accept-package-agreements --accept-source-agreements --source winget