ActiveAdmin.register Event do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :local, :date, subscriptions_attributes: [:id, :number, :tempo]


index do
 	column(:title ){|event| link_to "#{event.title}", admin_event_path(event)}
 	column :local
 	column :date
 end

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
