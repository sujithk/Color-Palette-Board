require 'rails_helper'


RSpec.describe HomeController, type: :controller do

  describe "GET User DashBoard" do
    it "has 200 status and renders userboard view" do
      get :userboard
      expect(response.status).to eq(200)
      expect(response).to render_template("userboard")
    end
  end

  describe "GET Index" do
    it "renders the index template" do
      get :index
      expect(response.status).to eq(200)
      expect(response).to render_template("index")
    end
  end

  describe "POST update_board_tile_colors" do
    it "renders the update_board_tile_colors template" do
      params = { tiles: "tile-19_10", code: "#29591e" }
      params.merge!(format: :js)

      post :update_board_tile_color, params: params
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:update_board_tile_color)
      expect(response.headers["Content-Type"]).to eq "text/javascript; charset=utf-8"
    end

  end

end
