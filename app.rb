require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("results") do
  erb(:results)
end
