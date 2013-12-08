class Product < ActiveRecord::Base
  attr_accessible :name, :photo, :price, :inventory, :product_id
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

  def total_quantity
  
      line_items.where('order_id IS NOT NULL').to_a.sum{ |item| item.quantity}
   
end



def remove_from_inventory!(qty)
  self.inventory = inventory - qty
      sql = "UPDATE inventories 
           SET quantity = (quantity - #{qty}) 
           WHERE id = #{self.id}"
    ActiveRecord::Base.connection.execute(sql)

end
     end
