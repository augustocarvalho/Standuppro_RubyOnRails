class Event < ApplicationRecord
 has_many :subscriptions
 has_many :categories, through: :subscriptions
end
