Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
  
  get '/teams', to: 'teams#index'
  get '/teams/:id', to: 'teams#show'
  get '/teams/:team_id/members', to: 'team_members#index'

  get '/members', to: 'members#index'
  get '/members/:id', to: 'members#show'
end
