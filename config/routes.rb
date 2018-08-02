Rails.application.routes.draw do
  resources :animal_breeds
  resources :animal_ages
  resources :type_of_animals
  resources :users 
  resources :animals
  resources :shelters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
