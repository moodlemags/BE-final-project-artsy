Rails.application.routes.draw do

# ROOT ROUTE
get "/"           => "game#welcome_placeholder"
get "/artsy"      => "game#make_artsy_api_call"


# GAME ROUTES
get   "/game"                   =>      "game#get_game_data"
post  "/game/:gene"            =>      "game#find_gene"


# LEARN ROUTES
post  "/learn"              =>      "learn#trigger_artsy_api"
get   "/learn"              =>      "learn#index"
post  "/learn/search"       =>      "learn#render_artsy"

post  "/learn/search/:gene"  =>     "learn#render_artsy"
post  "/game"               =>      "game#get_game_data"
#
#

end
