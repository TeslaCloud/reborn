--- Client-side hooks of the schema. Hooks are handled by gamemode-like functions on the
-- SCHEMA table instead of hook.Add.

--- Draws the welcome phrase in the top left corner of the HUD, in the color the active theme
-- returns from its TestHook method.
function SCHEMA:HUDPaint()
  draw.SimpleText(t'reborn.welcome_text', 'DermaLarge', 16, 16, Theme.hook('TestHook'))
end
