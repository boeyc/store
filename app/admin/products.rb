ActiveAdmin.register Product do

   menu :priority => 2, :label => "Products"


  index do

  	column "Image" do |product|
  		image_tag product.photo, class: 'my_image_size'
  	end
    column :name
    column :price
    column :inventory


    column :category_name
    column "Total Orders", :total_quantity
    default_actions
  end

    form do |f|
        f.inputs "Product Details" do

      f.input :name
      f.input :category_id, :as => :radio, :collection => Category.all
      f.input :photo
      f.input :price
      f.input :inventory
         end
    f.actions
  end
end
