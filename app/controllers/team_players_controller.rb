class TeamPlayersController < ApplicationController

  def create
    @player = Player.find(params[:team_player][:player_id])
    @team = Team.find(params[:team_id])
    @team_player = TeamPlayer.new
    @team_player.player = @player
    @team_player.team = @team

    if @team_player.save
      redirect_to team_path(@team)
    else
      render 'teams/show', status: :unprocessable_entity
    end
  end

end
