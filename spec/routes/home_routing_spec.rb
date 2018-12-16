require "rails_helper"

RSpec.describe "routes for home", type: :routing do
  it "routes / to home#index" do
    expect(get("/")).to route_to("home#index")
  end

  it "routes /home/update_board_tile_color home#update_board_tile_color" do
    expect(post("/home/update_board_tile_color")).to route_to('home#update_board_tile_color')
  end

  it "routes /home/reload_tiles home#reload_tiles" do
    expect(get("/home/reload_tiles")).to route_to('home#reload_tiles')
  end

  it "routes /home/userboard home#userboard" do
    expect(get("/home/userboard")).to route_to('home#userboard')
  end

end
