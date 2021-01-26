class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
      # .title(params[:search])
      # .discounted(params[:discount])
      # .sorted(params[:sort], params[:sort_order])
    render "index.json.jb"
  end


  # {
  #   id: product.id,
  #   name: product.name,
  #   price: product.price,
  #   #image_url: product.image_url,
  #   description: product.description,
  #   formatted:{
  #     is_discounted?: product.is_discounted?,
  #     tax: number_to_currency(product.tax),
  #     total: number_to_currency(product.total)
  #   },
  #   supplier: product.supplier,
  #   images: product.images
  # }
  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      #image_url: params[:image_url],
      description: params[:description],
      quantity: params[:quantity]
    )
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    #@product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.quantity = params[:quantity] || @product.quantity
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "Product destroyed successfully!" }
  end
end
