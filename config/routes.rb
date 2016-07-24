Rails.application.routes.draw do

  namespace :api do
    resources :gyms, only: [:index]
  end

end
