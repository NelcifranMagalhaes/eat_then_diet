require 'rails_helper'

RSpec.describe "diet_fields/edit", type: :view do
  before(:each) do
    @diet_field = assign(:diet_field, DietField.create!(
      :description => "MyText",
      :meal => "MyString"
    ))
  end

  it "renders the edit diet_field form" do
    render

    assert_select "form[action=?][method=?]", diet_field_path(@diet_field), "post" do

      assert_select "textarea[name=?]", "diet_field[description]"

      assert_select "input[name=?]", "diet_field[meal]"
    end
  end
end
