require 'rails_helper'

RSpec.describe "race_results/index", type: :view do
  before(:each) do
    assign(:race_results, [
      RaceResult.create!(),
      RaceResult.create!()
    ])
  end

  it "renders a list of race_results" do
    render
  end
end
