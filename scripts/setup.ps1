# Moves config to their default location

# Set script variables
echo $PSScriptRoot;
$NVIM_DOTFILE = $PSScriptRoot\nvim
$OMP_DOTFILE = $PSScriptRoot\nvim-
$NVIM_DIR_PATH = $env:LOCALAPPDATA\nvim
$NVIM_DATA_PATH = $env:LOCALAPPDATA\nvim-data


# Nvim configs
& `${PSScriptRoot}/clean.ps1`
cp $NVIM_DOTFILE $NVIM_DATA_PATH
