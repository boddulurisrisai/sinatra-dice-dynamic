require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end








get("/dice/:number_dice/:sides") do
  @noofdice = params.fetch("number_dice").to_i
  @side = params.fetch("sides").to_i
  @rolls=[]
  @noofdice.times do
    die = rand(1..@side)
    @rolls.push(die)

  end
  erb(:flexible)
end
