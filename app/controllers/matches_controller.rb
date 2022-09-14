class MatchesController < ApplicationController

  def index
    raise
    @matches = []
    if user_signed_in?
      @matches = current_user.matches_as_home_player
      @matches.concat(current_user.matches_as_away_player)
    end
  end
  def show
    @match = Match.find(params[:id])
  end

  def create
    @user = Team.find(params[:team_id]).user
    @match = Match.new(home_player: @user, away_player: current_user)
    Chatroom.create!(match: @match)

    if @match.save
      redirect_to match_path(@match)
    else
      render 'teams/show', status: :unprocessable_entity
    end
  end
end
