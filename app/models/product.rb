class Product < ApplicationRecord
  
  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
  has_many :images
  
  #comment out later for working on app
  validates :name, presence: true, uniqueness: true
  validates :description, length: {in: 10..500}


  # id: product.id,
  # name: product.name,
  # price: product.price,
  # image_url: product.image_url,
  # description: product.description    

  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
