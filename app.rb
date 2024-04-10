require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Dice Roll</h1>
  <p>Define some routes in app.rb</p>
  "
end
