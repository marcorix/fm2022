class Player < ApplicationRecord
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_role_and_name_and_club_and_nationality,
    against: [ :name, :role, :club, :nationality ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
