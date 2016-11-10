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
  def url_segment_params_method
    @value = params["this_is_a_variable"]
    render 'url_segment_params.html.erb'
  end
  def form_params_method
    render 'form.html.erb'
  end
  def form_result_method
    @value  = params["form_message"]
    render 'form_result.html.erb'
  end
end
