class EventsController < InheritedResources::Base

	def show
		@event = Event.find(params[:id])
		if params[:subscription] && params[:subscription][:category_id] != ''
  		  @subscriptions = @event.subscriptions.category(params[:subscription][:category_id])
  	else
        @subscriptions = @event.subscriptions.order(:tempo)
    end
    
    if params[:subscription] && params[:subscription][:number] != ''
        @event.subscriptions.number(params[:subscription][:number]).update(tempo: params[:subscription][:time])
        redirect_to(admin_event_path())
    end
  end

  private
    def event_params
      params.require(:event).permit(:title, :local, :date)
    end
end

