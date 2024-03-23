require "sinatra"
require "sinatra/reloader"

get "/" do
  links = [
    "<li><a href='/about'>About the App</a></li>",
    "<li><a href='/dice/3/6'>Roll three 6-sided dice</a></li>",
    "<li><a href='/dice/2/10'>Roll two 10-sided dice</a></li>",
    "<li><a href='/dice/5/4'>Roll five 4-sided dice</a></li>",
    "<li><a href='/dice/2/6'>Roll two 6-sided dice</a></li>",
    "<li><a href='/dice/3/4'>Roll three 4-sided dice</a></li>"
  ]
  
  "<h1>Dice Roll</h1><ul>" + links.join + "</ul>"
end


get("/about") do
  "This is a dice game, my first Ruby App"
end

get("/dice/3/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  third_die = rand(1..6)
  sum = first_die + second_die + third_die

  outcome = "You rolled a #{first_die}, a second_die, and a #{third_die} for a total of #{sum}."

  "<h1>3d6</h1>
  <p>#{outcome}</p>"
end

get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die
  
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  "<h1>2d10</h1>
  <p>#{outcome}</p>"
end

get("/dice/5/4") do
  first_die = rand(1..4)
  second_die = rand(1..4)
  third_die = rand(1..4)
  forth_die = rand(1..4)
  fifth_die = rand(1..4)

  sum = first_die + second_die + third_die + forth_die + fifth_die

  outcome = "You rolled a #{first_die}, a #{second_die}, a #{third_die}, a #{forth_die}, and a #{fifth_die} for  a total of #{sum}."

  "<h1>5d4</h1>
  <p>#{outcome}</p>"
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)

  sum = first_die + second_die
  
  outcome = "You rolled a #{first_die}, and a #{second_die} for a total of #{sum}."

  "<h1>2d6</h1>
  <p>#{outcome}</p>"
end

get("/dice/3/4") do
  first_die = rand(1..4)
  second_die = rand(1..4)
  third_die = rand(1..4)

  sum = first_die + second_die +third_die

  outcome = "You rolled a #{first_die}, a #{second_die}, and a #{third_die} for a total of #{sum}."

  "<h1>3d4</h1>
  <p>#{outcome}</p>"
end
