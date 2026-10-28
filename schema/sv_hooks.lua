--- Server-side hooks of the schema. Hooks are handled by gamemode-like functions on the
-- SCHEMA table instead of hook.Add.

--- Calls SCHEMA.Test:do_nothing every minute.
function SCHEMA:OneMinute()
  self.Test:do_nothing()
end
