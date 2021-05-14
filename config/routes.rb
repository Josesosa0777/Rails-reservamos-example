Rails.application.routes.draw do
  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/welcome', to: 'home#index'
  get 'people/new', to: 'people#new'
  post 'people', to: 'people#create'
  get 'people/:id', to: 'people#show'
  get 'people/:id/edit', to: 'people#edit'
  patch 'people/:id', to: 'people#update', as: :person
  delete 'people/:id', to: 'people#destroy'
  get 'people', to: 'people#index'
  get 'people/new', to: 'people#new', as: :new_people
end
