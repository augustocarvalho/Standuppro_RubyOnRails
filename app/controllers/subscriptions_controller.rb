class SubscriptionsController < InheritedResources::Base
  
  def index
  	if params[:subscription] and (params[:subscription][:event_id] || params[:subscription][:category_id])
  		@subscriptions = Subscription.search(params[:subscription][:event_id],params[:subscription][:category_id])
  	else	
  		@subscriptions = Subscription.all 
  	end
  end

  private

    def subscription_params
      params.require(:subscription).permit(:athlete_id, :category_id, :event_id, :number, :tempo)
    end
end

