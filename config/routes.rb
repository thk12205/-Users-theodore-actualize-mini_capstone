Rails.application.routes.draw do
  namespace :api do
    
    #get "/first_product_path" => "products#first_product_action"

    get "/products" => "products#index"

    get "/products/:id" => "products#show"

    post "/products" => "products#create"

    patch "/products/:id" => "products#update"

    delete "/products/:id" => "products#destroy"
  end

end