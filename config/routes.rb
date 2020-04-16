Rails.application.routes.draw do
  root 'home#top'
  get 'about', to: 'home#about' 
  resources :posts
  post 'posts/:id/update', to: 'posts#update', as: :update_post
  post 'posts/:id/destroy', to: 'posts#destroy', as: :destroy_post

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
