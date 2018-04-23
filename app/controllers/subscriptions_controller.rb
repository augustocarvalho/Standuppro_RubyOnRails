class SubscriptionsController < InheritedResources::Base
  
  def index
    if params[:subscription]   
      if params[:subscription][:event_id] == '' && params[:subscription][:category_id] == ''  
        @subscriptions = Subscription.all.order(:event_id, :category_id, :tempo)
      elsif params[:subscription][:category_id] == ''    
        @subscriptions = Subscription.event(params[:subscription][:event_id]).order(:category_id, :tempo)
      elsif params[:subscription][:event_id] == ''    
        @subscriptions = Subscription.category(params[:subscription][:category_id]).order(:tempo)
      else  
        @subscriptions = Subscription.event(params[:subscription][:event_id]).category(params[:subscription][:category_id]).order(:tempo)  
      end
    else 
       @subscriptions = Subscription.all.order(:event_id, :category_id,:tempo)
    end
  end





  private

    def subscription_params
      params.require(:subscription).permit(:athlete_id, :category_id, :event_id, :number, :tempo)
    end
end

