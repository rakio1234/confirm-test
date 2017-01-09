Rails.application.routes.draw do
  resources :users, only: %i(new create) do
    collection do
      post :new, path: :new, as: :new, action: :back
      post :confirm
    end
  end
end
