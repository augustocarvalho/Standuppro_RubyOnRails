class Event < ApplicationRecord
 has_many :subscriptions
 

 accepts_nested_attributes_for :subscriptions

end
