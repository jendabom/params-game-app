Rails.application.routes.draw do
  get '/name_game' => 'games#name_game'
  get '/number_game' => 'games#guess_a_number'
  get '/number_game/:guess' => 'games#guess_a_number'
end
