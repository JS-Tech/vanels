Rails.application.routes.draw do

  root to: "pages#index"

  resources :reservations, only: [:index, :create] do
    get 'calendar', on: :collection, defaults: { :format => 'json' }
  end

  get "/:page", to: "pages#index"

  put "/load/next/:page", to: "pages#next"
  put "/load/previous/:page", to: "pages#previous"
  put "/load/new/:page", to: "pages#new"


end
