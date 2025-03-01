require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do
  
  erb(:elephant)
  
end

=begin
get("/zebra") do
  "We must add a route for each path we want to support"
end

get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end
=end

get("/dice/2/6") do
  @rolls = []

  2.times do
    die = rand(1..6)
    @rolls.push(die)
  end

=begin
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die

  @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
=end

  erb(:two_six)

end

get("/dice/2/10") do
  @rolls = []

  2.times do
    die = rand(1..6)
    @rolls.push(die)
  end

=begin
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die

  @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
=end

  erb(:two_ten)

end

get("/dice/1/20") do
  @rolls = []

  2.times do
    die = rand(1..6)
    @rolls.push(die)
  end
=begin
  @dice_roll = rand(1..20)
  
  @outcome = "You rolled #{@dice_roll}!"
=end

  erb(:one_twenty)

end

get("/dice/5/4") do
  @rolls = []

  2.times do
    die = rand(1..6)
    @rolls.push(die)
  end

=begin
  first_die = rand(1..4)
  second_die = rand(1..4)
  third_die = rand(1..4)
  fourth_die = rand(1..4)
  fifth_die = rand(1..4)
  
  sum = first_die + second_die + third_die + fourth_die + fifth_die

  @outcome = "You rolled #{first_die}, #{second_die}, #{third_die}, #{fourth_die}, and #{fifth_die} for a total of #{sum}."
=end

  erb(:five_four)

end

get("/dice/100/6") do
  @rolls = []

  100.times do
    die = rand(1..6)
    @rolls.push(die)
  end

  erb(:one_hundred_six)

end
