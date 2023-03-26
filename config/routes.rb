Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #
  namespace :control_panel, path: "controlpanel" do
    resources :channels, only: %i[show]
  end

  resources :channels, only: %i[show edit update]
end
