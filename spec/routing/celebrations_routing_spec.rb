require "spec_helper"

describe CelebrationsController do
  describe "routing" do

    it "routes to #index" do
      get("/celebrations").should route_to("celebrations#index")
    end

    it "routes to #new" do
      get("/celebrations/new").should route_to("celebrations#new")
    end

    it "routes to #show" do
      get("/celebrations/1").should route_to("celebrations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/celebrations/1/edit").should route_to("celebrations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/celebrations").should route_to("celebrations#create")
    end

    it "routes to #update" do
      put("/celebrations/1").should route_to("celebrations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/celebrations/1").should route_to("celebrations#destroy", :id => "1")
    end

  end
end
