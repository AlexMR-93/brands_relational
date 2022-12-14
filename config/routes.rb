  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get("/",   to: "brands#index")
  get("/brands",   to: "brands#index")
  get("/brands/:id",   to: "brands#show")
  get("/cars",   to: "cars#index")
  get("/cars/:id",   to: "cars#show")
  get("/brands/:id/cars",   to: "brands_cars#index")
end
