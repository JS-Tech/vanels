Rails.application.routes.draw do

  root to: "pages#index"

  get "/:page", to: "pages#index"

  put "/load/next/:page", to: "pages#next"
  put "/load/previous/:page", to: "pages#previous"
  put "/load/new/:page", to: "pages#new"

end
