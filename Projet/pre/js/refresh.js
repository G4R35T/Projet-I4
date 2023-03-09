//setInterval(function(){
//   $('#card-loader').load('/../pre/layout/card.php' );
//}, 10000)

var intervalId;

$('#refresh-button').click(function() {
   clearInterval(intervalId); // arrêter l'intervalle de temps
   $('#card-loader').load('/../pre/layout/card.php');
});