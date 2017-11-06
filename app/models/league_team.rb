# == Schema Information
#
# Table name: league_teams
#
#  id          :integer          not null, primary key
#  abbrName    :string
#  cityName    :string
#  displayname :string
#  divName     :string
#  userName    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class LeagueTeam < ApplicationRecord
end
