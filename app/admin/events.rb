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



 	member_action :register_subscription, method: :post do
		if params[:subscription] && params[:subscription][:number] != ''
			subscription = Event.find(params[:id]).subscriptions.number(params[:subscription][:number])
			subscription.update(tempo: params[:subscription][:tempo])
			redirect_to admin_event_path()
		end
	end


show do
	panel "Register Time" do 
		## MINHA DUVIDA É COMO MANDAR OS VALORES DESSE FORM COMO PARAMS
		form do |f|
			div  do
				f.label  "Athlete Number"
				f.input :subscription, :number, type: :number
			end
			div do
				f.label  "Time"
				f.input :subscription, :tempo, type: :time
			end
			div :class => "action_item" do
				link_to("Register", register_subscription_admin_event_path, method: :post, class: :button)
			end
		end
	end


    panel "Subscriptions" do
      table_for(event.subscriptions) do |t|
    	t.column("Number", :number,  :sortable => :number) {|subscription| link_to "#{subscription.number} ", edit_admin_subscription_path(subscription) }
    	t.column("Athlete Name", :athlete)
    	t.column("Category", :category) {|subscription| link_to "#{subscription.category.name} ", admin_subscriptions_path('q[event_id_eq]' => event.id, 'q[category_id_eq]' => subscription.category_id)}
    	t.column("Tempo", :tempo)
  	  end
    end
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
