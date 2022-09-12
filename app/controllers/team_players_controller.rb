class TeamPlayersController < ApplicationController

  def create
    raise
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

  def destroy
    @team_player = TeamPlayer.find(params[:id])
    @team_player.destroy
    redirect_to team_path(@team_player.team), status: :see_other
  end

end
