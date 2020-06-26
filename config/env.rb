

ENV['SINATRA_ENV'] ||= 'development'

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

if ENV['SINATRA_ENV'] == 'development'
    require_relative '../secrets'

configure :development do 
    set :database, {adapter: "sqlite3", database: "db/db.sqlite3"}
end 

require_all 'app'