class SubscriptionsController < InheritedResources::Base
  
  def index
  	if params[:subscription] && !(params[:subscription][:event_id] == '' && params[:subscription][:event_id] == '')  
      if params[:subscription][:event_id] == ''  
        @subscriptions = Subscription.category(params[:subscription][:category_id])
      elsif params[:subscription][:category_id] == ''    
        @subscriptions = Subscription.event(params[:subscription][:event_id])
      else
        @subscriptions = Subscription.event(params[:subscription][:event_id]).category(params[:subscription][:category_id]).order(:tempo)  
      end
    elsif 
       @subscriptions = Subscription.all.order(:event_id, :category_id)

    end
  end

  private

    def subscription_params
      params.require(:subscription).permit(:athlete_id, :category_id, :event_id, :number, :tempo)
    end
end

