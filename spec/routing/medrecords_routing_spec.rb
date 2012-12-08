require "spec_helper"

describe MedrecordsController do
  describe "routing" do

    it "routes to #index" do
      get("/medrecords").should route_to("medrecords#index")
    end

    it "routes to #new" do
      get("/medrecords/new").should route_to("medrecords#new")
    end

    it "routes to #show" do
      get("/medrecords/1").should route_to("medrecords#show", :id => "1")
    end

    it "routes to #edit" do
      get("/medrecords/1/edit").should route_to("medrecords#edit", :id => "1")
    end

    it "routes to #create" do
      post("/medrecords").should route_to("medrecords#create")
    end

    it "routes to #update" do
      put("/medrecords/1").should route_to("medrecords#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/medrecords/1").should route_to("medrecords#destroy", :id => "1")
    end

  end
end
