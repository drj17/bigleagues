class LeagueTeamsController < ApplicationController

  def create
    params[:leagueTeamInfoList].each do |team|
      team_params = team.permit(
        :abbrName,
        :cityName,
        :displayName,
        :divName,
        :username
      )
      team_hash = team_params.to_h

      LeagueTeam.create(
        abbrName: team_hash["abbrName"],
        cityName: team_hash["cityName"],
        displayName: team_hash["displayName"],
        divName: team_hash['divName'],
        userName: team_hash["userName"]
      )
    end
  end

  def update
    print params[:leagueTeamInfoList]
  end

  def index
    teams = LeagueTeam.all
  end

end
