class Order < ActiveRecord::Base
  attr_accessible :address, :name, :user, :user_id


  has_many :line_items, :dependent => :destroy #deletes all line items accociated with order when destroyed
  belongs_to :user

  def add_line_items_from_cart(cart)
  	cart.line_items.each do |item|
  		item.cart_id = nil
  		line_items << item #adds the item to the line_items collection for the order
  	end
  end


	def total_quantity
	  	line_items.to_a.sum { |item| item.quantity}
	end

	def total_price
		line_items.to_a.sum { |item| item.total_price}
	end

end
