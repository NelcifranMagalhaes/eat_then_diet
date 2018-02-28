require "rails_helper"

RSpec.describe WeightsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/weights").to route_to("weights#index")
    end

    it "routes to #new" do
      expect(:get => "/weights/new").to route_to("weights#new")
    end

    it "routes to #show" do
      expect(:get => "/weights/1").to route_to("weights#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/weights/1/edit").to route_to("weights#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/weights").to route_to("weights#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/weights/1").to route_to("weights#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/weights/1").to route_to("weights#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/weights/1").to route_to("weights#destroy", :id => "1")
    end

  end
end
