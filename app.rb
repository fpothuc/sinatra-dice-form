require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/process_roll") do
  @num_dice = params.fetch("dice").to_i
  @num_sides = params.fetch("sides").to_i

  @rolls = []

  @num_dice.times do
    @rolls.push(rand(1..@num_sides))
  end

  @sum = @rolls.sum
  @max = @num_dice * @num_sides
  @ev = ((1 + @num_sides) * @num_dice)) / 2

  erb(:process_roll)
end
