TinystoreApi::Application.routes.draw do
  resources 'stores', only: [:index], path: "tinystores"
end
