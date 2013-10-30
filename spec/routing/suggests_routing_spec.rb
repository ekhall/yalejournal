require "spec_helper"

describe SuggestsController do
  describe "routing" do

    it "routes to #index" do
      get("/suggests").should route_to("suggests#index")
    end

    it "routes to #new" do
      get("/suggests/new").should route_to("suggests#new")
    end

    it "routes to #show" do
      get("/suggests/1").should route_to("suggests#show", :id => "1")
    end

    it "routes to #edit" do
      get("/suggests/1/edit").should route_to("suggests#edit", :id => "1")
    end

    it "routes to #create" do
      post("/suggests").should route_to("suggests#create")
    end

    it "routes to #update" do
      put("/suggests/1").should route_to("suggests#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/suggests/1").should route_to("suggests#destroy", :id => "1")
    end

  end
end
