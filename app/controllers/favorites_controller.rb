class FavoritesController < ApplicationController


  def index;end

  def add
    team = Team.find(params[:team_id])
    current_user.favorite(team)
    redirect_to team_path(team)
  end

  def remove
    team = Team.find(params[:team_id])
    current_user.unfavorite(team)
    redirect_to team_path(team)
  end
end
