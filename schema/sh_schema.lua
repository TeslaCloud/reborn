-- This file in an entry point for your schema. It will be included first, right after all of the
-- folders have been included (so, for example, "lib" folder would load before this file).
--
-- You are supposed to use this file to include other files (such as hooks, etc).

SCHEMA.default_theme = 'reborn'

-- Include the core files for your schema, as well as any other files you may need.
require_relative 'cl_schema'
require_relative 'sv_schema'

-- Incldue the hook files last, so that we already have our environment defined.
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
