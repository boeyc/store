ActiveAdmin.register Order do

  index do

	column "Email" do |order|
  		order.user.email
  	end

  	column :id
  	column :name
  	column :address
  	column :total_price
  	column :created_at

end
end
