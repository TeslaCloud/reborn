--- An example of a generic citizen faction, to be used as a reference for the factions of
-- other schemas.

local last_names = { 'the Mingebag', 'the Cat Lover', 'the Great' }

FACTION.name = 'reborn.faction.citizen.title'
FACTION.description = 'reborn.faction.citizen.description'
FACTION.phys_desc = 'reborn.faction.citizen.phys_desc'
FACTION.color = Color(225, 185, 135)
FACTION.material = 'reborn/demo_faction.jpg'
FACTION.name_template = '{name}'
FACTION.has_gender = true
FACTION.random_names = {
  male = { first = { 'Peter', 'John', 'Dan', 'Jack' }, last = last_names },
  female = { first = { 'Jane', 'Gloria', 'Michelle', 'Anna' }, last = last_names }
}

FACTION.models.male = {
  'models/humans/group01/male_01.mdl',
  'models/humans/group01/male_02.mdl',
  'models/humans/group01/male_03.mdl',
  'models/humans/group01/male_04.mdl',
  'models/humans/group01/male_05.mdl',
  'models/humans/group01/male_06.mdl',
  'models/humans/group01/male_07.mdl',
  'models/humans/group01/male_08.mdl',
  'models/humans/group01/male_09.mdl'
}

FACTION.models.female = {
  'models/humans/group01/female_01.mdl',
  'models/humans/group01/female_02.mdl',
  'models/humans/group01/female_03.mdl',
  'models/humans/group01/female_04.mdl',
  'models/humans/group01/female_06.mdl',
  'models/humans/group01/female_07.mdl'
}
