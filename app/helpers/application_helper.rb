module ApplicationHelper

  def get_tile_details(row,col)
    Palette.find_color_code_and_user_details(row,col)
  end

  def generate_tile(row,col)
    tile_info = get_tile_details(row,col)
    raw("<div onclick='toggleClass(this);' class='content' 
         id='tile-#{row}_#{col}' #{style_attributes(tile_info)}></div>")
  end

  def style_attributes(tile_info)
    "style='background-color: #{tile_info[0]}' title='#{tile_info[1]}'"
  end

end
