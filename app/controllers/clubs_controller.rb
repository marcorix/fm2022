class ClubsController < ApplicationController
  def index
    @clubs = Club.all
  # The `geocoded` scope filters only flats with coordinates
    @markers = @clubs.geocoded.map do |club|
      {
        lat: club.latitude,
        lng: club.longitude
      }
    end
  end
end
