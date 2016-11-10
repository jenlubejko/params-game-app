Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/
  get '/query_params_game_url' => 'params_game#query_params_game_method'
  get 'url_segment_params_url/:this_is_a_variable' => 'params_game#url_segment_params_method'
  get '/query_guess' => 'params_game#guessing_game_method'
  get '/form_params_url' => 'params_game#form_params_method'
  post '/form_result_url' => 'params_examples#form_result_method'
end
