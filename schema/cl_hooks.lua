-- Client-side hooks should be added here.
-- Instead of using hook.Add, like you would while developing a Garry's Mod addon,
-- you should instead create a gamemode-like function here inside the SCHEMA table.

--- Paint the HUD with the Reborn test text, that displays a sample phrase.
function SCHEMA:HUDPaint()
  draw.SimpleText(t'reborn.welcome_text', 'DermaLarge', 16, 16, Theme.hook('TestHook'))
end
