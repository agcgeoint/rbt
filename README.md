# Releasable Basemap Tiles (RBT)

The [AGC](https://www.agc.army.mil/) Releasable Basemap Tiles (RBT) prototype is important because the capability can be easily shared with international coalition partners and doesn’t need to go through the current approval process associated with traditional Limited Distribution (LIMDIS) data. The National System for Geospatial Intelligence (NSG) RBT prototype is based on modern technology and provides access to like in kind Standard Map Products such as Topographic Map (TM), Joint Operations Graphic (JOG), and Tactical Pilotage Chart (TPC) in Vector Tiles format. This format enables rapid transfer across a network or accessed offline from a tile cache.  By implementing simple changes in how modern maps are produced and accessed international coalition partners will be able to track plans and activities using the same basemaps as U.S. services without delays associated with release of classified information.

The RBT prototype is funded by [NGA](https://www.nga.mil/) and development, demonstration and enhancement will continue with the help of the Army Geospatial Enterprise [AGE](https://www.agc.army.mil/Army-Geospatial-Enterprise/About/) community, [GDIT](https://www.gdit.com), and [Axis Maps](https://www.axismaps.com/).

## Deploying with [TileserverGL](https://github.com/acalcutt/tileserver-gl#maplibre-tileserver-gl)
The RBT prototype is deployed as a containerized application using a modified version of [TileserverGL](https://hub.docker.com/repository/registry-1.docker.io/mjj203/rbt/tags?page=1&ordering=last_updated), that uses [MapLibre](https://maplibre.org/) instead of [MapboxGL](https://www.mapbox.com/mapbox-gljs), and enables EPSG:3395 projections for both WMTS and TileJSON endpoints. The `start.sh` script is an easy way to deploy the current config, styles, data, and fonts within this repo. Just clone this repo with [Git](https://git-scm.com/) to any linux or Windows WSL system with [Docker](https://www.docker.com/) installed, and run `./start.sh` within the root directory.

```
git clone https://github.com/agcgeoint/rbt.git
cd rbt
./start.sh
```

### Setup Environment
Before cloning this repo you will need to ensure [Git](https://git-scm.com/downloads), [Git Large File Storage (LFS)](https://git-lfs.github.com/), and [Docker](https://docs.docker.com/get-docker/) are installed and enabled on your system. 

#### Install Git
Download and install [Git](https://git-scm.com/downloads) and [LFS](https://github.com/git-lfs/git-lfs/releases/tag/v3.3.0) for your OS. For Windows just download the [Git Windows Installer](https://github.com/git-for-windows/git/releases/download/v2.38.1.windows.1/Git-2.38.1-64-bit.exe) and [LFS Windows Installer](https://github.com/git-lfs/git-lfs/releases/download/v3.3.0/git-lfs-windows-v3.3.0.exe), then double click each starting with Git to run through the installation. Then open your Git Bash or Git Cmd terminal and execute `git lfs install`.

#### Install Docker
Download and install [Docker](https://docs.docker.com/get-docker/) for your OS. For windows ensure [Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/) is installed by following [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) for the latest Windows 10/11 or [Manual WSL](https://learn.microsoft.com/en-us/windows/wsl/install-manual) for older versions. Once WSL is enabled, then follow the [Windows install directions](https://docs.docker.com/desktop/install/windows-install/) and download the [installer](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe).
