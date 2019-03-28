-- Clientside helpers would go here (e.g. net receivers, drawing functions, etc.)

local last_names  = { 'the Mingebag', 'the Cat Lover', 'the Great' }
local first_names = {
  male    = { 'Peter', 'John', 'Dan', 'Jack' },
  female  = { 'Jane', 'Gloria', 'Michelle', 'Anna' }
}

function SCHEMA:get_random_name(char_data)
  local gender = string.lower(char_data.gender or 'male')
  local last_name = last_names[math.random(1, #last_names)]
  local first_name = first_names[gender][math.random(1, #first_names[gender])]

  return first_name..' '..last_name
end
