---
layout: page
title: Installation
tags:
 - Installation
 - GAP
 - Julia
 - CapAndHomalg.jl
 - Linux
 - macOS
 - Windows
description: Installation
---

# Installation

To easily obtain recent versions of all [GAP](https://www.gap-system.org/) packages hosted on the GitHub organization [homalg-project](https://github.com/homalg-project/) and run them either using `julia` or `gap`, we recommend installing the [Julia](https://julialang.org/) package [CapAndHomalg.jl](https://homalg-project.github.io/pkg/CapAndHomalg.jl). This package will also help you keep all packages [up-to-date](#keeping-your-installation-up-to-date).

## Step 0: Prerequisites for the installation

### Linux

###### Ubuntu 18.04 "Bionic" or newer, Debian 10 "Buster" or newer

```
sudo apt-get update
sudo apt-get install -y build-essential curl wget git julia libjulia-dev
```

### macOS

###### macOS 10.12 or newer

1. Install [Xcode](https://apps.apple.com/de/app/xcode/id497799835).
2. Launch a `Terminal` and enter the command `xcode-select --install`, then press enter.
3. A window will appear asking you: "The xcode-select command requires the command line developer tools. Would you like to install the tools now?". Confirm this by clicking `Install`.
4. Wait for this to complete; it needs to download about 130 MB of data.
5. You can verify that everything worked verifying the `/Library/Developer/CommandLineTools/usr/bin/` exists and contains executables such as the C compiler `clang` and the C++ compiler `clang++`.


### Windows

###### Windows 10

1. Install [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/install-win10) and choose `Ubuntu 20.04 LTS` as your Linux distribution of choice.
2. Follow the instructions for [Ubuntu 18.04 "Bionic" or newer above](#ubuntu-1804-bionic-or-newer-debian-10-buster-or-newer).

## Step 1: Install Julia

Download the newest Julia from the [Julia download page](https://julialang.org/downloads/) and install it following the [platform specific instructions](https://julialang.org/downloads/platform/).

## Step 2: Install `CapAndHomalg.jl`

Follow the [installation instructions for CapAndHomalg.jl](https://github.com/homalg-project/CapAndHomalg.jl#install-capandhomalgjl).

## Step 3: Running the packages

### In GAP

First download this GAP execution script [`gap-with-cap-and-homalg-via-julia`](https://raw.githubusercontent.com/homalg-project/CapAndHomalg.jl/master/deps/usr/bin/gap-with-cap-and-homalg-via-julia), move it to a directory within your binary paths after making it exectuable.


Open a terminal and run the script `gap-with-cap-and-homalg-via-julia`, which by now should be in your binary path:

```gap
gap-with-cap-and-homalg-via-julia
 ┌───────┐   GAP 4.11.0 of 29-Feb-2020
 │  GAP  │   https://www.gap-system.org
 └───────┘   Architecture: x86_64-apple-darwin19.6.0-julia64-kv7-v1.5
 Configuration:  gmp 6.1.2, Julia GC, Julia 1.5.1, readline
 Loading the library and packages ...
 Packages:   AClib 1.3.2, Alnuth 3.1.2, AtlasRep 2.1.0, AutoDoc 2020.08.11,
             AutPGrp 1.10.2, CRISP 1.4.5, Cryst 4.1.23, CrystCat 1.1.9,
             CTblLib 1.2.2, FactInt 1.6.3, FGA 1.4.0, Forms 1.2.5,
             GAPDoc 1.6.3, genss 1.6.6, IO 4.7.0, IRREDSOL 1.4, LAGUNA 3.9.3,
             orb 4.8.3, Polenta 1.3.9, Polycyclic 2.15.1, PrimGrp 3.4.0,
             RadiRoot 2.8, recog 1.3.2, ResClasses 4.7.2, SmallGrp 1.4.1,
             Sophus 1.24, SpinSym 1.5.2, TomLib 1.2.9, TransGrp 2.0.5,
             utils 0.69
 Try '??help' for help. See also '?copyright', '?cite' and '?authors'
gap> LoadPackage( "RingsForHomalg" );
true
gap> Q := HomalgFieldOfRationalsInSingular( );
Q
```

### In Julia

Open a terminal and run `julia`:

```julia
julia
              _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.5.1 (2020-08-25)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

julia> using CapAndHomalg
CapAndHomalg v1.0.0-dev
Imported OSCAR's components GAP and Singular_jll
Type: ?CapAndHomalg for more information

julia> LoadPackage( "RingsForHomalg" )

julia> Q = HomalgFieldOfRationalsInSingular()
GAP: Q

```

## Keeping your installation up-to-date

###### Updating `CapAndHomalg.jl`

To update `CapAndHomalg.jl` follow the instructions [here](https://homalg-project.github.io/CapAndHomalg.jl/dev/#Updating).

###### Updating all packages

To update all [GAP](https://www.gap-system.org/) packages from GitHub organization [homalg-project](https://github.com/homalg-project/) downloaded during the installation of `CapAndHomalg.jl` use the command [UpdateAllPackagesFromHomalgProject](https://homalg-project.github.io/CapAndHomalg.jl/dev/#CapAndHomalg.UpdateAllPackagesFromHomalgProject):

```julia
julia> using CapAndHomalg

julia> UpdateAllPackagesFromHomalgProject()
```