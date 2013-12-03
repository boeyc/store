class Product < ActiveRecord::Base
  attr_accessible :name, :photo, :price, :inventory

  has_attached_file :photo
  has_many :line_items


  	def no_delete_flag
  		if line_items.empty?
  			return false
  		else
  			errors.add(:base, 'Line Items present')
  			return true
  	end
  end
end
