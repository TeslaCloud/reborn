-- Use this file to define schema methods that should be clientside-only.
-- These methods aren't hooks, they may be helpers, or some logic that you may want to have.

local last_names  = { 'the Mingebag', 'the Cat Lover', 'the Great' }
local first_names = {
  male    = { 'Peter', 'John', 'Dan', 'Jack' },
  female  = { 'Jane', 'Gloria', 'Michelle', 'Anna' }
}

--- Builds a random character name from the first names of a gender and a random last name.
-- @param gender [String gender key, falls back to 'male' if it has no first names]
-- @param char_data [Table character creation data, unused]
-- @return [String first and last name separated by a space]
function SCHEMA:get_random_name(gender, char_data)
  gender = first_names[gender] and gender or 'male'
  local names = first_names[gender]
  local last_name = last_names[math.random(1, #last_names)]
  local first_name = names[math.random(1, #names)]

  return first_name..' '..last_name
end
