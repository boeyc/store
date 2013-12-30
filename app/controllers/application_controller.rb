class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_cart
  	Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
  	cart = Cart.create
  	session[:cart_id] = cart.id
  	cart
  end

helper_method :current_cart

def current_categories
  	Category.all
end
helper_method :current_categories


def new_arrival_status(product_id)

	@new_product = product.find_by_product_id(product_id)

		
		@new_arrival_status = Time.now - @new_product.created_at 
		if @new_arrival_status/86400 < 14
			true
		else
			false

end
end
end

