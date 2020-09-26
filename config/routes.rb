Rails.application.routes.draw do
  resources :books, param: :book_id
  resources :authors, param: :author_id
  root 'authors#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
