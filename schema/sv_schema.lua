-- Use this file to define schema methods that should be serverside-only.
-- These methods aren't hooks, they may be helpers, or some logic that you may want to have.

--- Determine if a player is cool enough.
-- Really just returns if player's name begins with
-- an even letter of the alphabet.
-- ```
-- -- Kill uncool players!
-- if !SCHEMA:is_player_cool(player) then
--   player:Kill()
-- end
-- ```
-- @return [Boolean(Player Coolness)]
function SCHEMA:is_player_cool(player)
  local first_letter = player:Name()[1]

  return math.even(first_letter)
end
