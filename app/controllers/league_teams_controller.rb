class LeagueTeamsController < ApplicationController

  def create
    params[:leagueTeamInfoList].each do |team|
      print team
      LeagueTeam.create(
        abbrName: team.abbrName,
        cityName: team.cityName,
        displayName: team.displayName,
        divName: team.divName,
        userName: team.userName
      )
    end
  end

  private

  def team_params
    params.require(:leagueTeamInfoList).
  end
end
