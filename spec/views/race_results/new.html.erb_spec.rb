require 'rails_helper'

RSpec.describe "race_results/new", type: :view do
  before(:each) do
    assign(:race_result, RaceResult.new())
  end

  it "renders new race_result form" do
    render

    assert_select "form[action=?][method=?]", race_results_path, "post" do
    end
  end
end
