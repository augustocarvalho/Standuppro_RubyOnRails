class SubscriptionsController < InheritedResources::Base

  private

    def subscription_params
      params.require(:subscription).permit(:athlete_id, :category_id, :event_id, :number, :tempo)
    end
end

