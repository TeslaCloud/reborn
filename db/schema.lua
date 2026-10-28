-- This file is auto-generated from the current state of the database. Instead
-- of editing this file, please use the migrations feature of Active Record to
-- incrementally modify your database, and then regenerate this schema definition.
--
-- This file is the source Active Record uses to define your schema when running
-- `flux db:schema:load`, or when the server starts with an empty database. When
-- creating a new database, loading the schema tends to be faster and is less error
-- prone than running all of your migrations from scratch. Old migrations may fail
-- to apply correctly if those migrations use external dependencies or application
-- code.
--
-- It's strongly recommended that you check this file into your version control system.
--
-- Dumped at 2026-10-20T09:09:22Z
ActiveRecord.Schema:define({ version = 20261014120000 }, function()
  create_table('bans', { force = true }, function(t)
    t:string 'name'
    t:string 'steam_id'
    t:text 'reason'
    t:integer 'duration'
    t:datetime 'unban_time'
    t:datetime { 'created_at', null = false }
    t:datetime { 'updated_at', null = false }
    t:string { 'admin_name', null = true }
    t:string { 'admin_steam_id', null = true }
  end)

  create_table('characters', { force = true }, function(t)
    t:integer 'user_id'
    t:string { 'steam_id', null = false }
    t:string { 'name', null = false }
    t:integer 'gender'
    t:text 'phys_desc'
    t:string 'model'
    t:integer 'skin'
    t:integer 'health'
    t:datetime { 'created_at', null = false }
    t:datetime { 'updated_at', null = false }
    t:string { 'faction', default = "'player'" }
    t:integer { 'rank', null = true }
    t:text { 'data', null = true }
    t:text { 'ammo', null = true }
    t:integer { 'armor', null = true }
    t:boolean { 'banned', default = false }
  end)

  create_table('logs', { force = true }, function(t)
    t:text 'body'
    t:string 'action'
    t:string 'object'
    t:string 'subject'
    t:datetime { 'created_at', null = false }
    t:datetime { 'updated_at', null = false }
  end)

  create_table('permissions', { force = true }, function(t)
    t:string 'permission_id'
    t:integer 'object'
    t:integer 'user_id'
    t:datetime { 'created_at', null = false }
    t:datetime { 'updated_at', null = false }
  end)

  create_table('temp_permissions', { force = true }, function(t)
    t:string 'permission_id'
    t:integer 'object'
    t:integer 'user_id'
    t:timestamp 'expires'
    t:datetime { 'created_at', null = false }
    t:datetime { 'updated_at', null = false }
  end)

  create_table('users', { force = true }, function(t)
    t:string { 'steam_id', null = false }
    t:string { 'name', null = false }
    t:datetime { 'created_at', null = false }
    t:datetime { 'updated_at', null = false }
    t:string { 'role', default = "'user'" }
    t:boolean { 'banned', default = false }
    t:text { 'data', null = true }
  end)

  create_table('whitelists', { force = true }, function(t)
    t:string 'faction_id'
    t:integer 'user_id'
    t:datetime { 'created_at', null = false }
    t:datetime { 'updated_at', null = false }
  end)

  add_index('users', { 'steam_id' }, { name = 'users_steam_id_index' })
end)
