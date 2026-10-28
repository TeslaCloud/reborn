--- Server-side schema methods that are not hooks.

--- Determines if a player is cool enough: returns whether the player's name begins with an
-- even letter of the alphabet (b, d, f and so on).
-- ```
-- if !SCHEMA:is_player_cool(target) then
--   target:Kill()
-- end
-- ```
-- @param target [Player]
-- @return [Boolean whether the player is cool]
function SCHEMA:is_player_cool(target)
  local first_letter = target:Name():lower():byte(1)

  return first_letter != nil and math.even(first_letter)
end
