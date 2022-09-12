class Team < ApplicationRecord
  belongs_to :user
  has_many :team_players

  validates :name, presence: true
  validates :name, uniqueness: true

  acts_as_favoritable
end
