require "rails_helper"

RSpec.describe TeamDriversController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/team_drivers").to route_to("team_drivers#index")
    end

    it "routes to #new" do
      expect(:get => "/team_drivers/new").to route_to("team_drivers#new")
    end

    it "routes to #show" do
      expect(:get => "/team_drivers/1").to route_to("team_drivers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/team_drivers/1/edit").to route_to("team_drivers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/team_drivers").to route_to("team_drivers#create")
    end

    it "routes to #update" do
      expect(:put => "/team_drivers/1").to route_to("team_drivers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/team_drivers/1").to route_to("team_drivers#destroy", :id => "1")
    end

  end
end
