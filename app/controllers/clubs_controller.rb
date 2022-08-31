class ClubsController < ApplicationController
  def index
    @clubs = Club.all
  # The `geocoded` scope filters only flats with coordinates
    @markers = @clubs.geocoded.map do |club|
      {
        lat: club.latitude,
        lng: club.longitude,
        info_window: render_to_string(partial: "info_window", locals: {club: club}),
        image_url: helpers.asset_url("ball.png")
      }
    end
  end
end
