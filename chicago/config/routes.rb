Rails.application.routes.draw do

  root 'places#index'

  resources :places do
    resources :reviews
  end

end
