--- An example of a Flux module namespaced within the schema. Modules may be included into
-- classes or other modules, or used on their own.

mod 'SCHEMA::Test'

--- A function that does absolutely nothing, and returns nothing.
-- @return [nil]
function SCHEMA.Test:do_nothing()
end
