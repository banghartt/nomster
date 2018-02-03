Rails.application.routes.draw do
  get 'page/index'

  root 'places#index'
end
