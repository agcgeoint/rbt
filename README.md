# Releasable Basemap Tiles (RBT)

The [AGC](https://www.agc.army.mil/) Releasable Basemap Tiles (RBT) prototype is important because the capability can be easily shared with international coalition partners and doesn’t need to go through the current approval process associated with traditional Limited Distribution (LIMDIS) data. The National System for Geospatial Intelligence (NSG) RBT prototype is based on modern technology and provides access to like in kind Standard Map Products such as Topographic Map (TM), Joint Operations Graphic (JOG), and Tactical Pilotage Chart (TPC) in Vector Tiles format. This format enables rapid transfer across a network or accessed offline from a tile cache.  By implementing simple changes in how modern maps are produced and accessed international coalition partners will be able to track plans and activities using the same basemaps as U.S. services without delays associated with release of classified information.

The RBT prototype is funded by [NGA](https://www.nga.mil/) and development, demonstration and enhancement will continue with the help of the Army Geospatial Enterprise [AGE](https://www.agc.army.mil/Army-Geospatial-Enterprise/About/) community, [GDIT](https://www.gdit.com), and [Axis Maps](https://www.axismaps.com/).

## Deploying with [MapLibre TileserverGL](https://github.com/acalcutt/tileserver-gl#maplibre-tileserver-gl)
The RBT prototype is deployed as a containerized application using a modified version of [TileserverGL](https://github.com/maptiler/tileserver-gl), that uses [MapLibre](https://maplibre.org/) instead of [MapboxGL](https://www.mapbox.com/mapbox-gljs). The `start.sh` script is an easy way to deploy the current config, styles, data, and fonts within this repo. Just clone this repo with [Git](https://git-scm.com/) to any linux or Windows WSL system with [Docker](https://docs.docker.com/get-docker/) installed, and run `./start.sh` within the root directory.

```
git clone https://github.com/agcgeoint/rbt.git
cd rbt
./start.sh
```

### Setup Environment
