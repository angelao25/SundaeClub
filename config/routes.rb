Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #
  namespace :control_panel, path: "controlpanel" do
    resources :channels, only: :show do
      resource :suspension, only: :create, module: :channels
    end
  end

  namespace :sites_setup, path: "sites/:site_id/welcome" do
    resource :details, only: %i[edit update], path: "your-site"
    resource :users, only: %i[new create], path: "account"
  end

  resources :sites, only: :create
  resources :channels, only: %i[show edit update]

  root "static#home_page"
end
