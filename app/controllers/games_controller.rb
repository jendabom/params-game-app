class GamesController < ApplicationController
  def name_game
    the_name = params["name"]
    p the_name
    
    if the_name && the_name[0].downcase == 'a'
      render json: {message: "Hey your name starts with the first letter of the alphabet"}
    else
      render json: {name: the_name.upcase}
    end
  end

  def guess_a_number
    the_number = 36
    guess = params["guess"].to_i

    if guess == the_number
      render json: {result: "You Win!"}
    elsif guess < the_number
      render json: {result: "Try a higher number!"}
    elsif guess > the_number
      render json: {result: "Try a lower number!"}
    end
  end
end
