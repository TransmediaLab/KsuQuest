class Faction < ActiveRecord::Base
  has_many :users
  has_many :scores
  has_many :faction_changes
  # attr_accessible :title, :body

  mount_uploader :icon, FactionIconUploader

end
