require 'rails_helper'

RSpec.describe "race_results/show", type: :view do
  before(:each) do
    @race_result = assign(:race_result, RaceResult.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
