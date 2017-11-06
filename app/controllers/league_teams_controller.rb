class LeagueTeamsController < ApplicationController

  def create
    print "TEAM PARAMS"
    print team_params
    team_params.to_h.each do |team|
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
    print "PARAMS"
    print params
    params.permit(:leagueTeamInfoList)
  end
end
