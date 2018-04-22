ActiveAdmin.register Subscription do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#


permit_params :athlete_id, :category_id, :event_id, :number, :tempo

	action_item :publish, only: :show do
		link_to "Register", register_admin_subscription_path(), method: :put
	end

	member_action :register, method: :put do
		subscription = Subscription.find(params[:id])
		subscription.update(tempo: params[:tempo])
		redirect_to admin_dashboard_path()
	end

controller do

	
end


index do
    column("Number", :number,  :sortable => :number) {|subscription| link_to "#{subscription.number} ", edit_admin_subscription_path(subscription) }
    column("Athlete", :athlete)
    column("Category", :category, :sortable => :category_id)
    column("Event", :event)
    column("Tempo", :tempo)
 end



  
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
end
