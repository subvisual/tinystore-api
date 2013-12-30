TinystoreApi::Application.routes.draw do
  resources 'stores', only: [:index, :show]
end
