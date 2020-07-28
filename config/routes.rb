Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'patients#index'

  resources :patients, only: [:index] do
    collection do
      post :import
    end
  end
end
