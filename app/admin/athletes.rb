ActiveAdmin.register Athlete do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :dob, :email, :estado, :cidade, :codabasup

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

# customize index page
	index do
 		column "Cod ABASUP", :codabasup
 		column :name
 		column "Birthday", :dob
 		column :email
 		column :cidade
 		column :estado
 	end

end
