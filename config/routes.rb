Rails.application.routes.draw do
  resources :tempos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "busca_tempo/buscar"
end
