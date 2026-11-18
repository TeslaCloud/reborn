--- Server entry point of the gamemode.
-- Sends the client entry point to clients and boots Flux from the `flux` package in the
-- `packages` folder of the gamemode.

AddCSLuaFile 'cl_init.lua'

include(engine.ActiveGamemode()..'/packages/flux/boot.lua')
