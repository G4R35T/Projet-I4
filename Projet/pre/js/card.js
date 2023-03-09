//ouvre l extention de la card
var hambutt = document.querySelectorAll(".card-ham");
  for (var i = 0; i < hambutt.length; i++) {

    hambutt[i].addEventListener("click", function (event2) {
    var parent = this.parentNode.parentNode.parentNode;
    var ext = parent.querySelector(".card-ext");
    
      ext.classList.toggle("ouvert");
      this.classList.toggle("ouvert");


    });

  }

//affiche la cles si elle est presente et ouvre la porte si elle est ouverte
 var card = document.querySelectorAll(".card-box");
  for (var i = 0; i < card.length; i++) {

    var etatp = card[i].querySelector(".card-ext-etat.p");    
    var porte = card[i].querySelector(".porte");    
    if (etatp.classList.contains("ouverte")) {
      porte.classList.toggle("ouverte");
    }

    var etatc = card[i].querySelector(".card-ext-etat.c");
    var cle = card[i].querySelector(".cle");
    if (etatc.classList.contains("presente")) {
      cle.style.display = "block";
    }
  }

//permet l ouverture et la fermeture des porte
  var casiers = document.querySelectorAll(".casier");
  for (var i = 0; i < casiers.length; i++) {

    casiers[i].addEventListener("click", function (event) {

      var porte = event.currentTarget.querySelector(".porte");

      porte.classList.toggle("ouverte");


    });

  }