Rails.application.routes.draw do
  get '/help',         to: 'static_pages#help'
  get '/about',        to: 'static_pages#about'
  get '/contact_us',   to: 'static_pages#contact_us'
  devise_for :users
  resources  :media
  root "static_pages#about"
end
