--- Entry point of the schema. It is included before the schema's folders, so `lib` and the
-- other folders load after it, and it includes the other files of the schema.

SCHEMA.default_theme = 'reborn'

require_relative 'cl_schema'
require_relative 'sv_schema'

require_relative 'cl_hooks'
require_relative 'sv_hooks'

--- Kills a randomly-selected player.
-- ```
-- SCHEMA:kill_random_player() -- A random player should be dead by now.
-- ```
-- @return [nil]
function SCHEMA:kill_random_player()
  local random_player = player.random()

  if IsValid(random_player) then
    return random_player:Kill()
  end
end
