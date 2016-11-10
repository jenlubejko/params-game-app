class ParamsGameController < ApplicationController
  def query_params_game_method
    @message = params['my_message'].upcase
    @name = params['my_name']
    render 'query_params_game.html.erb'
  end
  def guessing_game_method
    winning_number = 32
    @guess = params["the_guess"].to_i
    if @guess > winning_number
      @message = "Pick lower!"
    elsif @guess < winning_number
      @message = "Pick higher!"
    else
      @message = "You win!"
    end
    render 'guess.html.erb'
  end
end
