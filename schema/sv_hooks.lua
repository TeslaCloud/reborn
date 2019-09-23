-- Server-side hooks should be added here.
-- Instead of using hook.Add, like you would while developing a Garry's Mod addon,
-- you should instead create a gamemode-like function here inside the SCHEMA table.

--- Do nothing every 60 seconds.
function SCHEMA:OneMinute()
  -- Since the SCHEMA::Test module is defined in the SCHEMA namespace,
  -- we can actually use `self` here to refer to it!
  self.Test:do_nothing()
end
