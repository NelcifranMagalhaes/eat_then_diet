require 'rails_helper'

RSpec.describe "Weights", type: :request do
  describe "GET /weights" do
    it "works! (now write some real specs)" do
      get weights_path
      expect(response).to have_http_status(200)
    end
  end
end
