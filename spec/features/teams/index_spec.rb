require 'rails_helper'

describe 'team index page' do
  let!(:team_1) {Team.create!(name: "Bruins", games_won: 10, won_championship: true)}
  let!(:team_2) {Team.create!(name: "Devils", games_won: 7, won_championship: false)}

  before do
    visit '/teams'
  end

  describe 'when I visit team index page' do
    it 'shows the name of each team' do
      save_and_open_page
      expect(page).to have_content(team_1.name)
      expect(page).to have_content(team_2.name)
    end
  end
end