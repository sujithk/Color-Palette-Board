  //Color Picker
  $(document).ready(function(){
    $(".colors").minicolors({
      position: 'top right',
      inline: true
    });
  });

  //Block select/Remove
  function toggleClass(e){
    if ($(e).hasClass("selected")){
      $(e).removeClass("selected");
    }
    else{
     $(e).addClass("selected");
    }
  }

  //Block Color Update
  function updateTileColors(){
    if ($(".selected").size() == 0){
      alert("Please select a Block!")
    }
    else{
      selectedColor = $(".colors").val();
      selectedTiles = []
      $(".selected").map(function() {
        $(this).css("background-color",selectedColor);
        selectedTiles.push($( this ).attr("id"))
      });
      $.ajax({
        type: "POST",
        beforeSend: function(xhr) {
                      xhr.setRequestHeader('X-CSRF-Token', 
                      $('meta[name="csrf-token"]').attr('content'))
                    },
        url: "/home/update_board_tile_color",
        data: {tiles: selectedTiles.join(","),color_code: selectedColor}
      });
    }
  }

  //Block Reload
  function reloadTile(){
    if ($(".selected").size() == 0){
      $.ajax({
        type: "get",
        url: "/home/reload_tiles"
      });
    }
  }

  window.setInterval(reloadTile,8000);
