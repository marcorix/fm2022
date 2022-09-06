class Match < ApplicationRecord
  belongs_to :home_player, class_name: "User"
  belongs_to :away_player, class_name: "User"
  has_many :chatrooms
end
