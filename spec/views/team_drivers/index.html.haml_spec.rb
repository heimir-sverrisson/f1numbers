require 'rails_helper'

RSpec.describe "team_drivers/index", type: :view do
  before(:each) do
    assign(:team_drivers, [
      TeamDriver.create!(),
      TeamDriver.create!()
    ])
  end

  it "renders a list of team_drivers" do
    render
  end
end
