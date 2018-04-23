class EventsController < InheritedResources::Base

	def show
		@event = Event.find(params[:id])
		if params[:subscription] && params[:subscription][:category_id] != ''
  		  @subscriptions = @event.subscriptions.category(params[:subscription][:category_id])
  	else
        @subscriptions = @event.subscriptions.order(:tempo)
    end
  end

  private
    def event_params
      params.require(:event).permit(:title, :local, :date)
    end
end

