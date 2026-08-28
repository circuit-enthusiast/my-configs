# Moves config to their default location

# Set script variables
#echo $PSScriptRoot;
$NVIM_DOTFILE = "$PSScriptRoot\..\nvim"
$ASTRO_NVIM_TEMPLATE_DOTFILE = "$PSScriptRoot\..\astro-nvim-template-main"
# $OMP_DOTFILE = "$PSScriptRoot\nvim-"
$NVIM_DIR_PATH = "$env:LOCALAPPDATA\nvim"
$NVIM_DATA_PATH = "$env:LOCALAPPDATA\nvim-data"


# Nvim configs
& "$PSScriptRoot\clean.ps1"

if($args[0] -eq $null -or $args[0] -eq "nvim"){
  Write-Output "Setting up custom nvim configs in $NVIM_DIR_PATH"
  cp -r $NVIM_DOTFILE $env:LOCALAPPDATA;
} elseif ($args[0] -eq "astro"){
  Write-Output "Setting up astro nvim template configs in $NVIM_DIR_PATH"
  cp -r $ASTRO_NVIM_TEMPLATE_DOTFILE\* $NVIM_DIR_PATH;
}
