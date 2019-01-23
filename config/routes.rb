Rails.application.routes.draw do
  get '/inicio', to: 'inicio#index'
  post '/inicio', to: 'inicio#index'
  get 'export_users', to: 'inicio#export_users', as: :export_users
 
  root to: 'inicio#index'
end
