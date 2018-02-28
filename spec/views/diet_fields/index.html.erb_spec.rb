require 'rails_helper'

RSpec.describe "diet_fields/index", type: :view do
  before(:each) do
    assign(:diet_fields, [
      DietField.create!(
        :description => "MyText",
        :meal => "Meal"
      ),
      DietField.create!(
        :description => "MyText",
        :meal => "Meal"
      )
    ])
  end

  it "renders a list of diet_fields" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Meal".to_s, :count => 2
  end
end
