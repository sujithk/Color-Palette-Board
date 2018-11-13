Rails.application.routes.draw do
  root :to => "home#index"
  post '/home/update_board_tile_color'
  get '/home/reload_tiles'
  get '/home/userboard'
end
