require 'rails_helper'

RSpec.describe "TeamDrivers", type: :request do
  describe "GET /team_drivers" do
    it "works! (now write some real specs)" do
      get team_drivers_path
      expect(response).to have_http_status(200)
    end
  end
end
