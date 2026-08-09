# Script to removes all config related data

# Nvim configs
if (Test-Path -Path $env:LOCALAPPDATA\nvim)
{
	Remove-Item -r -Force $env:LOCALAPPDATA\nvim
}

if (Test-Path -Path $env:LOCALAPPDATA\nvim-data)
{
	Remove-Item -r -Force $env:LOCALAPPDATA\nvim-data
}


