require 'rails_helper'

RSpec.describe "diet_fields/show", type: :view do
  before(:each) do
    @diet_field = assign(:diet_field, DietField.create!(
      :description => "MyText",
      :meal => "Meal"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Meal/)
  end
end
