# Reborn
A demo schema made for Flux framework.

# Installation
Put this repository into `garrysmod/gamemodes` of the server, in a folder named `reborn`, run
`fpkg install` anywhere in the server folder to install Flux and the other packages of the schema
into its `packages` folder, and start the server with `+gamemode reborn`. The configuration of the
server goes into `gamemodes/reborn/config/`.

For development, run `fpkg link ../flux-ce` in this checkout to use a checkout of Flux instead of
the published package, then `fpkg install` for the rest of the packages. To run the schema in a
container, see the "Docker (development)" section of the Flux readme.

Binary modules: `gmsv_file` is installed as a dependency of `flux`. A PostgreSQL server
uncomments `s.depends 'gmsv_pg'` in `packagespec.lua` and runs `fpkg install`. MySQL and MariaDB
need mysqloo, which you copy into `garrysmod/lua/bin` by hand from
https://github.com/TeslaCloud/flux-dependencies.

Please refer to the Flux repo for the rest of the installation instructions.
