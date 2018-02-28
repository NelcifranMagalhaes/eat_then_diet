require 'rails_helper'

RSpec.describe "diet_fields/new", type: :view do
  before(:each) do
    assign(:diet_field, DietField.new(
      :description => "MyText",
      :meal => "MyString"
    ))
  end

  it "renders new diet_field form" do
    render

    assert_select "form[action=?][method=?]", diet_fields_path, "post" do

      assert_select "textarea[name=?]", "diet_field[description]"

      assert_select "input[name=?]", "diet_field[meal]"
    end
  end
end
