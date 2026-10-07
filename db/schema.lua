--
-- This is an ActiveRecord schema file.
-- Dumped at 2018-10-07 03:02:16
--
local Structure = ActiveRecord.Schema:define(20181007030219)
  function Structure:create_tables()
    create_table('ammunitions', function(t)
      t:primary_key 'id'
      t:string 'type'
      t:integer 'amount'
      t:integer 'character_id'
      t:datetime 'created_at'
      t:datetime 'updated_at'
    end)

    create_table('bans', function(t)
      t:primary_key 'id'
      t:string 'name'
      t:string 'steam_id'
      t:text 'reason'
      t:integer 'duration'
      t:datetime 'unban_time'
      t:datetime 'created_at'
      t:datetime 'updated_at'
    end)

    create_table('characters', function(t)
      t:primary_key 'id'
      t:integer 'user_id'
      t:string 'steam_id'
      t:string 'name'
      t:integer 'gender'
      t:text 'phys_desc'
      t:string 'model'
      t:integer 'skin'
      t:integer 'health'
      t:datetime 'created_at'
      t:datetime 'updated_at'
      t:string 'faction'
      t:integer 'rank'
    end)

    create_table('logs', function(t)
      t:primary_key 'id'
      t:text 'body'
      t:string 'action'
      t:string 'object'
      t:string 'subject'
      t:datetime 'created_at'
      t:datetime 'updated_at'
    end)

    create_table('permissions', function(t)
      t:primary_key 'id'
      t:string 'permission_id'
      t:integer 'object'
      t:integer 'user_id'
      t:datetime 'created_at'
      t:datetime 'updated_at'
    end)

    create_table('temp_permissions', function(t)
      t:primary_key 'id'
      t:string 'permission_id'
      t:integer 'object'
      t:integer 'user_id'
      t:timestamp 'expires'
      t:datetime 'created_at'
      t:datetime 'updated_at'
    end)

    create_table('users', function(t)
      t:primary_key 'id'
      t:string 'steam_id'
      t:string 'name'
      t:datetime 'created_at'
      t:datetime 'updated_at'
      t:string 'role'
      t:boolean 'banned'
    end)

    create_table('whitelists', function(t)
      t:primary_key 'id'
      t:string 'faction_id'
      t:integer 'user_id'
      t:datetime 'created_at'
      t:datetime 'updated_at'
    end)

    add_index { 'users', 'steam_id', name = 'users_steam_id_index' }
  end

  -- Metadata
  Structure.metadata = {
    references = {},
    prim_keys = {},
    indexes = { users_steam_id_index = { 'users', 'steam_id' } },
    adapter = '',
    db_name = ''
  }
return Structure
