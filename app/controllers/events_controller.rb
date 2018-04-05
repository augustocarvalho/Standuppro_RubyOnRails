class EventsController < InheritedResources::Base

	def show
		@event = Event.find(params[:id])
		if params[:subscription] && params[:subscription][:category_id] != ''
  		  @subscriptions = Subscription.category(params[:subscription][:category_id]).event(params[:id])
  	else
        @subscriptions = @event.subscriptions
    end
  end

  private
    def event_params
      params.require(:event).permit(:title, :local, :date)
    end
end

