class EventsController < InheritedResources::Base

	def show
		@event = Event.find(params[:id])
		if params[:subscription] and (params[:subscription][:category_id])
  		  @event.subscriptions = Subscription.search(params[:subscription][:category_id],[:id])
  		end
    end


	


  private
    def event_params
      params.require(:event).permit(:title, :local, :date)
    end
end

