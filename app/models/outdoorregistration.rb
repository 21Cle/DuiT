class Outdoorregistration < ApplicationRecord
  belongs_to :users
  belongs_to :outdoorevents
end
