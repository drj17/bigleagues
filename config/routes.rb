Rails.application.routes.draw do
  root to: 'sessions#new'

  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

  post '/import/:platform/:leagueId/leagueteams', controller: 'league_teams', action: :create
  post '/import/:platform/:leagueId/standings', controller: 'league_teams', action: :update
end
