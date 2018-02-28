require 'rails_helper'

RSpec.describe "weights/index", type: :view do
  before(:each) do
    assign(:weights, [
      Weight.create!(
        :value => 2.5,
        :user => nil
      ),
      Weight.create!(
        :value => 2.5,
        :user => nil
      )
    ])
  end

  it "renders a list of weights" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
