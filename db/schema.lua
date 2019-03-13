--
-- This is an ActiveRecord schema file.
-- Dumped at 2018-10-07 03:02:16 
--
local Structure = ActiveRecord.Schema:define(20181007030219)
  function Structure:create_tables()

    create_table("ammo", function(t)
      t:primary_key "id"
      t:string "type"
      t:integer "amount"
      t:integer "character_id"
      t:datetime "created_at"
      t:datetime "updated_at"
    end)

    create_table("attribute_boosts", function(t)
      t:primary_key "id"
      t:integer "attribute_id"
      t:integer "value"
      t:integer "duration"
      t:datetime "created_at"
      t:datetime "updated_at"
    end)

    create_table("attribute_multipliers", function(t)
      t:primary_key "id"
      t:integer "attribute_id"
      t:integer "value"
      t:integer "duration"
      t:datetime "created_at"
      t:datetime "updated_at"
    end)

    create_table("attributes", function(t)
      t:primary_key "id"
      t:string "attr_id"
      t:integer "character_id"
      t:integer "value"
      t:datetime "created_at"
      t:datetime "updated_at"
    end)

    create_table("bans", function(t)
      t:primary_key "id"
      t:string "name"
      t:string "steam_id"
      t:text "reason"
      t:integer "duration"
      t:integer "user_id"
      t:datetime "unban_time"
      t:datetime "created_at"
      t:datetime "updated_at"
    end)

    create_table("characters", function(t)
      t:primary_key "id"
      t:string "steam_id"
      t:string "name"
      t:string "model"
      t:integer "gender"
      t:text "phys_desc"
      t:integer "money"
      t:integer "character_id"
      t:integer "user_id"
      t:integer "health"
      t:datetime "created_at"
      t:datetime "updated_at"
      t:string "faction"
      t:string "char_class"
      t:text "item_ids"
      t:integer "skin"
    end)

    create_table("data", function(t)
      t:primary_key "id"
      t:string "key"
      t:text "value"
      t:integer "character_id"
      t:datetime "created_at"
      t:datetime "updated_at"
    end)

    create_table("logs", function(t)
      t:primary_key "id"
      t:text "body"
      t:string "action"
      t:string "object"
      t:string "subject"
      t:datetime "created_at"
      t:datetime "updated_at"
    end)

    create_table("permissions", function(t)
      t:primary_key "id"
      t:string "permission_id"
      t:string "object"
      t:integer "user_id"
      t:datetime "created_at"
      t:datetime "updated_at"
    end)

    create_table("users", function(t)
      t:primary_key "id"
      t:string "steam_id"
      t:string "name"
      t:datetime "created_at"
      t:datetime "updated_at"
      t:string "role"
      t:boolean "banned"
    end)

    create_table("whitelists", function(t)
      t:primary_key "id"
      t:string "faction_id"
      t:integer "character_id"
      t:integer "user_id"
      t:datetime "created_at"
      t:datetime "updated_at"
    end)

    add_index { "users", "steam_id", name = "users_steam_id_index" }

  end

  -- Metadata
  Structure.metadata = { references = {  }, prim_keys = {  }, indexes = { users_steam_id_index = { "users", "steam_id" } }, adapter = "", db_name = "" }
return Structure
