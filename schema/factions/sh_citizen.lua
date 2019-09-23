-- This is an example of a generic citizen faction you may create in your own schema.
-- Feel free to use this file as reference for your own schemas.

-- The display name of the faction. You can put a phrase here.
-- (please note that you need to have that phrase in the language file first)
FACTION.name = 'reborn.faction.citizen.title'

-- The description of the faction that may be displayed at the character creation screen.
-- Again, you can use phrases here.
FACTION.description = 'reborn.faction.citizen.description'

-- The default physical description given to characters in this faction, that otherwise lack
-- physical description (e.g. bots).
FACTION.phys_desc = 'reborn.faction.citizen.phys_desc'

-- The color of this faction to be used in the OOC chats, admin ESP and everywhere else.
FACTION.color = Color(225, 185, 135)

-- File path to the faction image relative to the materials/ folder.
FACTION.material = 'reborn/demo_faction.jpg'

-- The name template to use for this faction. This template will be applied when a player
-- creates a character, and will format their name accordingly. Here is an example for
-- a generic HL2RP CP faction:
-- {data:city}.{data:index}{rank}:{data:tagline}-{callback:get_unit_id}
FACTION.name_template = '{name}'

-- Determines if the faction should have gender or not.
FACTION.has_gender = true

-- Models to be used for the male characters, if the faction has genders in the first place.
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

-- Models to be used for the female characters, if the faction has genders in the first place.
FACTION.models.female = {
  'models/humans/group01/female_01.mdl',
  'models/humans/group01/female_02.mdl',
  'models/humans/group01/female_03.mdl',
  'models/humans/group01/female_04.mdl',
  'models/humans/group01/female_06.mdl',
  'models/humans/group01/female_07.mdl'
}

-- You may also specify FACTION.models_universal to specify models that may be used for both genders.
