class EventsController < InheritedResources::Base

  private

    def event_params
      params.require(:event).permit(:title, :local, :date)
    end
end

