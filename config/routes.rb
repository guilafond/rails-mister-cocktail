Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: 'cocktail#index'
  resources :cocktails do
    resources :doses, only: [:index, :new, :create]
  end

  resources :doses, only: :destroy

  # get "cocktails/:id/doses/new", to: "doses#new"

end
