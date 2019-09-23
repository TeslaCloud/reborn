-- This file is an example of how you may create your own
-- Flux modules in your schema. These modules may be included
-- by you later in your classes, or used on their own.

-- You may prefer to namespace your modules within the schema.
mod 'SCHEMA::Test'

--- A function that does absolutely nothing, and returns nothing.
-- @return[nil(Yes, I meant it when I said it returns nothing)]
function SCHEMA.Test:do_nothing()
  -- Yes, we really do nothing.
end
