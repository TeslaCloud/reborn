-- Use this file to define schema methods that should be serverside-only.
-- These methods aren't hooks, they may be helpers, or some logic that you may want to have.

--- Determine if a player is cool enough.
-- Really just returns if player's name begins with
-- an even letter of the alphabet.
-- ```
-- -- Kill uncool players!
-- if !SCHEMA:is_player_cool(target) then
--   target:Kill()
-- end
-- ```
-- @return [Boolean(Player Coolness)]
function SCHEMA:is_player_cool(target)
  local first_letter = target:Name()[1]

  return math.even(first_letter)
end
