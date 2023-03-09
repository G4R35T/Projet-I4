window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}



const rep = document.getElementById("rep");

for (let i = 0; i < window.innerWidth/ 192 ; i++) {
  const listItem = document.createElement("li");
  rep.appendChild(listItem);
}