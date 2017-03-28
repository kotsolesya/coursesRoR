# encoding: UTF-8
ActiveRecord::Schema.define(version: 20_170_328_211_636) do
  create_table 'images', force: true do |t|
    t.string   'url'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'posts', force: true do |t|
    t.string   'title'
    t.text     'body'
    t.datetime 'published_at'
    t.datetime 'created_at',   null: false
    t.datetime 'updated_at',   null: false
  end

  create_table 'users', force: true do |t|
    t.string   'first_name'
    t.string   'last_name'
    t.string   'username'
    t.string   'password'
    t.string   'email'
    t.datetime 'birthday'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
