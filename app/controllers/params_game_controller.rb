class ParamsGameController < ApplicationController
  def query_params_game_method
    @message = params['my_message'].upcase
    @name = params['my_name']
    render 'query_params_game.html.erb'
  end
end
