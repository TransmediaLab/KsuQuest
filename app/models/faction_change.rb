class FactionChange < ActiveRecord::Base
  belongs_to :user
  belongs_to :faction
  attr_accessible :faction, :user
end
