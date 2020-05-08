Rails.application.routes.draw do
  root 'welcome#index'
  get '/search', to: 'search#index'
end
