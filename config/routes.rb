 # Routes for my API
Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :inmuebles # se accede a la ruta /api/v1/inmuebles
    end
  end
end
