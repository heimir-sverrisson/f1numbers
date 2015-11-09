require 'rails_helper'

RSpec.describe "team_drivers/new", type: :view do
  before(:each) do
    assign(:team_driver, TeamDriver.new())
  end

  it "renders new team_driver form" do
    render

    assert_select "form[action=?][method=?]", team_drivers_path, "post" do
    end
  end
end
