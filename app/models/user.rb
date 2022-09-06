class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :teams
  has_many :matches_as_away_player, class_name: "Match", foreign_key: :home_player_id
  has_many :matches_as_home_player, class_name: "Match", foreign_key: :away_player_id
end
