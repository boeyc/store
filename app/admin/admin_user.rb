ActiveAdmin.register AdminUser do
 menu :priority => 3, :label => "Admin Users"

  sidebar :SIDEBAR do
    ul do
      li "Second List First Item"
      li "Second List Second Item"
    end
  end

  index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end
    admin = User.find[0]
  AdminUser.find[0] = admin
  

  filter :email

  form do |f|
    f.inputs "Admin Details" do

      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
