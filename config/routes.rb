Rails.application.routes.draw do
  namespace :api do
    
    get "/first_product_path" => "products#first_product_action"

    get "/products" => "products#index"

    get "/products/:id" => "products#show"

    get "/single_product_url_path/:id" => "products#single_product_action"

    post "/products" => "products#create"

  end

end