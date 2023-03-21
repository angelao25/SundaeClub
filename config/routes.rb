Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
<<<<<<< HEAD
  resources :channels, only: :show
=======
  root "landing_pages#home_page"
>>>>>>> d4b8716 ( WIP: Add Channel model)

end
