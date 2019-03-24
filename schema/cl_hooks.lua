-- Clientside hooks would go here.
function SCHEMA:HUDPaint()
  draw.SimpleText(t'reborn.welcome_text', 'DermaLarge', 16, 16, Theme.hook('TestHook'))
end
