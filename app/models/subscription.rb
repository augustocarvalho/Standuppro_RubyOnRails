class Subscription < ApplicationRecord
  belongs_to :athlete
  belongs_to :category
  belongs_to :event
end
