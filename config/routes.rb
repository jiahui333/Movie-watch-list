Rails.application.routes.draw do
  resources :lists, only: [:index, :new, :create, :destroy] do
    resources :bookmarks
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
