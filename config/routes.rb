Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/
  get '/query_params_game_url' => 'params_game#query_params_game_method'
end
