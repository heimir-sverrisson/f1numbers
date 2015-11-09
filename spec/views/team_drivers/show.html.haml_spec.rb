require 'rails_helper'

RSpec.describe "team_drivers/show", type: :view do
  before(:each) do
    @team_driver = assign(:team_driver, TeamDriver.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
