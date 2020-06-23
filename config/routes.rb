Rails.application.routes.draw do

  resources :partners  do
    member do
      get :confirm_email
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "website#index"
  get "/profile/:id", to: "profile#student", as: "profile"

end
