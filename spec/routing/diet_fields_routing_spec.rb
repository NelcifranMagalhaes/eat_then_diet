require "rails_helper"

RSpec.describe DietFieldsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/diet_fields").to route_to("diet_fields#index")
    end

    it "routes to #new" do
      expect(:get => "/diet_fields/new").to route_to("diet_fields#new")
    end

    it "routes to #show" do
      expect(:get => "/diet_fields/1").to route_to("diet_fields#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/diet_fields/1/edit").to route_to("diet_fields#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/diet_fields").to route_to("diet_fields#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/diet_fields/1").to route_to("diet_fields#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/diet_fields/1").to route_to("diet_fields#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/diet_fields/1").to route_to("diet_fields#destroy", :id => "1")
    end

  end
end
