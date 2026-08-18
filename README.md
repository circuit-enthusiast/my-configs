# Personalized Dev Configs

This repo contains any and all configs deemed relevant for my development environment.
It is made with the intention to standardize how I work across all my personal and work machines.

## Oh-my-posh

[oh-my-posh](https://ohmyposh.dev/) describes itself as `The most customizable and fastest prompt engine for any shell`. It is supported by Windows, macOS and Linux.

<span style="color:red;">**TODO**: add image example</span>

## Nvim

<!-- interesting: https://github.com/nvim-lua/kickstart.nvim/tree/master -->

Open source, easy to install(opiniated statement) and a great overall text-editor. My config is meant to be as lightweight and secure as possible, by this I mean its meant to be something that can be used at a work place.

As suggested by the [lazy.nvim documentation](https://lazy.folke.io/installation), the config file structure for nvim will be as follows:
```
path/to/config/nvim
├── lua
│   ├── config
│   │   └── lazy.lua
│   └── plugins
│       ├── spec1.lua
│       ├── **
│       └── spec2.lua
└── init.lua
```

### lazy.nvim

lazy.nvim is a solid package manager for nvim packages (or plugins), it is configured and used through lua. These configs will follow a structured setup for better overall maintainability (see above file structure).

#### File Structure

The structured setup has a clear and straightforward file structure, at the first level you have the `init.lua` file which should be used to point towards other configurations. Then there is the `lua` directory which holds all the config and [plugin specifications](https://lazy.folke.io/spec).  
<span style="color:red;">**TODO**: Define the config directory</span>

##### init.lua
<span style="color:red;">**TODO**: Define the init file</span>

#### Packages

<span style="color: red;">**TODO**: list all packages and their lua specs, explain the how and why</span>

## Package Managers

A package manager is required since we want to automate most of the process, for nvim its easy we can use lazy.nivm (not to be confused with lazyVim).
For your host machine, the package manager largely depends on your OS, e.g. winget for windows or pacman for arch, however third-party package managers are available such as Homebrew. 

| OS | Package Manager | Comment |
| - | - | - |
| windows | [winget](https://github.com/microsoft/winget-pkgs/tree/94098aaec732d6e9d6305a3b900d8be938c5ad8a) | todo |
| linux | [nix](https://github.com/nixos/nix) | Touted as a reliable and reproducible way to manage packages, the nix package manager appears to be a solid crossplatform option |
| linux & macOS | [homebrew](https://brew.sh/) | A solid package manager that supports both linux and macOS |


<!-- 

[TODO]: define the list of things to be setup

Major steps:
- Terminal Setup
  - Install oh-my-posh
  - set oh-my-posh theme
  - install a nerd-font (Jetbrains mono NF ?)

- Nvim Setup
  - Install nvim latest stable version (make sure to avoid dev version as it breaks astronvim)
  - Install lazy.nvim (requires git, a nerd font, luarocks)
  - Install AstroNvim (requires a nerd font, tree-sitter cli (with cargo-binstall?)), and suggest extra stuff on their repo)
  *N.B. astronvim requires lazy.nvim but its best to get the astronvim repo first and then add to it the lazy.nvim + wtv other plugins

- Prog Lang Setup
  - Rust
  - C#
  - Java
  - C/C++
  - typescript (Node)
  - python
  - Go

[IMPORTANT]
A package manager is needed since we want to automate most of the process, for nvim its easy we can use lazy.nivm (not to be confused with lazyVim).
For your host machine, the package manager largely depends on your OS, e.g. winget for windows or pacman for arch, however third-party package managers are available such as Homebrew. 
As of today (17-07-2026) I have not found an OS agnostic reliable package manager, this may be due to a lack of effort in research.
Thus, a small segment of this will be OS dependant. 

[Package Manager - OS] *draft*
windows - [winget](https://github.com/microsoft/winget-pkgs/tree/94098aaec732d6e9d6305a3b900d8be938c5ad8a)
linux - [nix](https://github.com/nixos/nix)

[Explanation]
1) While winget is by far less mature than its alternatives (e.g. choco), it is supported and maintained by microsoft, making it less likely to be a proble in the future.
2) Nix apparently has a very stable approache to package management which makes it a very palatable option. [See here for more details](https://news.ycombinator.com/item?id=38015788)

[List of general requirements and version]
- Nvim (stable)
- node (latest lts)
- oh-my-posh (latest)
- Jetbrains mono NF (latest)
- lazy.nvim (latest)
- AstroNvim (latest)
- luarocks

[Implementation Draft Overview]
1) Determine host machines OS
2) Download all requirements for the host machine using the appropriate package manager
3) Move the config files to their appropriate locations according to the OS and record their location
4) Set the environment variables
5) Run minimal testing (are all requirements detected)

[**oh-my-posh theme**](https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/markbull.omp.json)

-->
