class Subscription < ApplicationRecord
  belongs_to :athlete
  belongs_to :category
  belongs_to :event


  def self.search(search1, search2)
  	where("event_id = ?","#{search1}")
  	where("category_id = ?","#{search2}")
  end


end
