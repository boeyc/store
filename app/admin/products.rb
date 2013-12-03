ActiveAdmin.register Product do
  
   menu :priority => 2, :label => "Products"


  index do                            
    
  	column "Image" do |product|
  		image_tag product.photo, class: 'my_image_size'
  	end
    column :name                     
    column :price    
    column :inventory           
                
    default_actions                   
  end          


end
