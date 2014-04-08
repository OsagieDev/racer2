$(document).ready(function() {
  update = function(player,position) {
    var player_is = ("tr#"+player+" :nth-child("+position+")");
      $("tr#"+player).children().removeClass("active");
      $(player_is).addClass("active");
  };

  var count1= 1
  var count2= 1


  var winner = function(count, player) {

    if (count === 8) {
      $("table").hide();
      $("div.winner").html("<h1>"+ player + " is the winner!</h1>");
      $(document).unbind("keyup");
      $(".winner-table").css("visibility","visible");
       sendWinner(player);
      };
  };
  $(document).on('keyup', function(event) {
   if (event.which === 81) {
    update("player1", String(count1))
    count1 += 1
    winner(count1, "Player 1")
   } else if (event.which === 80){
    update("player2", String(count2))
    count2 += 1
    winner(count2, "Player 2")
   };
  });

});

