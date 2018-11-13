class HomeController < ApplicationController
  before_action :set_user_name

  include ApplicationHelper

  def index
  end

  def update_board_tile_color
    params.permit!
    params[:tiles].split(",").each do |tile|
      position = tile.split("-")[1].split("_")
      @user.palettes.create(code: params[:color_code],row: position[0],column: position[1])
    end
    respond_to :js
  end

  def reload_tiles
    respond_to :js
  end

  def userboard
    @users = User.joins(:palettes)
                 .select("users.*, count(palettes.id) as scount")
                 .group("users.id")
                 .order("scount DESC")
  end

  protected

  def set_user_name
    user = User.where(ip_address: request.remote_ip).last
    if user.present?
      @user = user
    else
      username = "Admin #{DateTime.now.strftime('%Y:%m:%d %H:%S')}"
      @user = User.create(username: username,ip_address: request.remote_ip)
    end
  end

end
