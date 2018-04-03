json.extract! subscription, :id, :athlete_id, :category_id, :event_id, :number, :tempo, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
