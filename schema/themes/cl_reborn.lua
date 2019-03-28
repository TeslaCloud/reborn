-- Feel free to use this as a base for your own custom theme!

THEME.author  = 'TeslaCloud Studios'
THEME.id      = 'reborn'
THEME.parent  = 'factory'

function THEME:on_loaded()
  local scrw, scrh = ScrW(), ScrH()
  local accent_color = Color(220, 100, 220)

  self:set_color('accent', accent_color)
  self:set_color('accent_dark', accent_color:darken(20))
  self:set_color('accent_light', accent_color:lighten(20))

  self:set_option('menu_sidebar_width', scrw / 4)
  self:set_option('menu_sidebar_x', scrw * 0.5)
  self:set_option('menu_sidebar_y', scrh * 0.25 * 3)
  self:set_option('menu_sidebar_logo_space', 0)
  self:set_option('menu_sidebar_height', scrh * 0.25)
  self:set_option('menu_sidebar_button_centered', true)
  self:set_option('menu_sidebar_button_offset_x', 0)
  self:set_option('menu_music', 'sound/music/hl2_song19.mp3')
  self:set_option('bar_height', 7)

  -- self:set_material('schema_logo', 'materials/flux/hl2rp/logo.png')
  -- self:set_material('gradient', 'materials/flux/hl2rp/gradient.png')

  self:set_font('text_bar', self:get_font('main_font'), math.max(Font.scale(14), 14), { weight = 600 })
end

function THEME:TestHook()
  return self:get_color('accent')
end
