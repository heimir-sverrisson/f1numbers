require 'rails_helper'

RSpec.describe "team_drivers/edit", type: :view do
  before(:each) do
    @team_driver = assign(:team_driver, TeamDriver.create!())
  end

  it "renders the edit team_driver form" do
    render

    assert_select "form[action=?][method=?]", team_driver_path(@team_driver), "post" do
    end
  end
end
