require 'rails_helper'

RSpec.describe "race_results/edit", type: :view do
  before(:each) do
    @race_result = assign(:race_result, RaceResult.create!())
  end

  it "renders the edit race_result form" do
    render

    assert_select "form[action=?][method=?]", race_result_path(@race_result), "post" do
    end
  end
end
