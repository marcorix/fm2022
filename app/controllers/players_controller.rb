class PlayersController < ApplicationController
  def index
    if params[:query].present?
      @players = Player.search_by_role_and_name_and_club_and_nationality(params[:query])
    else
      @players = Player.all
    end
  end

  def show
  end
end
