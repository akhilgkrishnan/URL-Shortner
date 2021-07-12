Rails.application.routes.draw do
  resources :urls, only: %i[index create update], param: :slug

  root 'home#index'
  get '*path', to: 'home#index', via: :all
end
