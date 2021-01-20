class Product < ApplicationRecord

  # id: product.id,
  # name: product.name,
  # price: product.price,
  # image_url: product.image_url,
  # description: product.description

  def is_discounted?
    return true if price < 10
    return false
  end

  def tax
    return price * 0.09
  end

  def total
    return price + tax
  end
end
