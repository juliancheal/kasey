Kasey::Engine.routes.draw do
  resources :kases, only: [:index, :show, :destroy]  do
    resources :messages, only: [:create, :edit, :update]
  end
end
