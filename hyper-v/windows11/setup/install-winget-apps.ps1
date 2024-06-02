$winget_path = ls "C:\Program Files\windowsapps\Microsoft.DesktopAppInstaller*x64*8wekyb3d8bbwe" | select -ExpandProperty fullname

& $asd\winget.exe install Google.Chrome --silent --accept-package-agreements --accept-source-agreements

& $asd\winget.exe install Valve.Steam --silent --accept-package-agreements --accept-source-agreements