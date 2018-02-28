require 'rails_helper'

RSpec.describe "DietFields", type: :request do
  describe "GET /diet_fields" do
    it "works! (now write some real specs)" do
      get diet_fields_path
      expect(response).to have_http_status(200)
    end
  end
end
