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

require 'test_helper'

class LeagueTeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
