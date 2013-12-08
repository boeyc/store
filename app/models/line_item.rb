class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :product, :order_id, :inventory

  belongs_to :order
  belongs_to :cart
  belongs_to :product

  def total_price
  	product.price * quantity
  end
end
