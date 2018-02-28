require 'rails_helper'

RSpec.describe "weights/edit", type: :view do
  before(:each) do
    @weight = assign(:weight, Weight.create!(
      :value => 1.5,
      :user => nil
    ))
  end

  it "renders the edit weight form" do
    render

    assert_select "form[action=?][method=?]", weight_path(@weight), "post" do

      assert_select "input[name=?]", "weight[value]"

      assert_select "input[name=?]", "weight[user_id]"
    end
  end
end
