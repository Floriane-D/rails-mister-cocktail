Rails.application.routes.draw do
  #get "cocktails/new", to: "cocktails#new"
  #get "cocktails", to: "cocktails#index"
  #get "cocktails/:id", to: "cocktails#show"
  #post "cocktails", to: "cocktails#create"
  # resources :cocktails

  resources :cocktails do
    resources :doses, only: [ :index, :new, :create ]
  end

  get "doses/:id", to: "doses#show"
end
