class Api::ProductsController < ApplicationController

  def first_product_action
    @product = Product.first
    render 'first_product.json.jb'
  end
  
  def index
    @products = Product.all
    render 'index.json.jb'

  end

  def show
    product = Product.find_by(id: params[:id])
    @product = {
      name: product.name,
      price: product.price,
      imageUrl: product.image_url,
      description: product.description
    }
    render 'show.json.jb'

  end

  #post "/products" => "products#create"
  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    render 'show.json.jb'
  end

end
