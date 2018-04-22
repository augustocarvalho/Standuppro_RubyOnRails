class Subscription < ApplicationRecord
  belongs_to :athlete
  belongs_to :category
  belongs_to :event


scope :category, -> (category) { where category_id: category }
scope :event, -> (event) { where event_id: event }
scope :number, -> (number) { where number: number }

end
