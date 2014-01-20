class StoreController < ApplicationController
  def index
  	@categories = Category.all
  	@products = Product.all

  	    admin = User.find[0]
  AdminUser.find[0] = admin
  x =AdminUser.find[0]
x
  end
end
