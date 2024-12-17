$('body').append(`<div class="--tagline"><a href="https://www.instagram.com/jordyy.lf/" target="_blank">#JordyMadeThis</a></div>`);

if (window.location.href.endsWith("about.html")) {
  let noticeStat = sessionStorage.getItem('notice');
  if (!noticeStat) {
    alert("Hello, welcome to Jordy Commission Website!");
    sessionStorage.setItem('notice', 'shown');
  }
}

// switch
var Hari;
switch (new Date().getDay()) {
  case 0:
    Hari = "Sunday";
    break;
  case 1:
    Hari = "Monday";
    break;
  case 2:
    Hari = "Tuesday";
    break;
  case 3:
    Hari = "Wednesday";
    break;
  case 4:
    Hari = "Thursday";
    break;
  case 5:
    Hari = "Friday";
    break;
  case 6:
    Hari = "Saturday";
}
document.getElementById("hari").innerHTML = "Today is " + Hari;

// logout
function logout() {
  sessionStorage.removeItem('username');
  window.location.href = "login.html";
}

$(function () {
  $(".navbar-toggler").on("click", function (e) {
    $(".tm-header").toggleClass("show");
    e.stopPropagation();
  });

  $("html").click(function (e) {
    var header = document.getElementById("tm-header");

    if (!header.contains(e.target)) {
      $(".tm-header").removeClass("show");
    }
  });

  $("#tm-nav .nav-link").click(function (e) {
    $(".tm-header").removeClass("show");
  });
});

// ini untuk price
function price() {
  // deklarasi
  var a = document.getElementById("angka1").value;
  var b = document.getElementById("angka2").value;
  var c = document.getElementById("angka3").value;
  var d = document.getElementById("angka4").value;
  var e = document.getElementById("angka5").value;
  var f = document.getElementById("angka6").value;
  var g = document.getElementById("angka7").value;
  var h = document.getElementById("angka8").value;
  var i = document.getElementById("angka9").value;
  // proses
  var A = a * c;
  var B = b * c;
  var D = d * f;
  var E = e * f;
  var G = g * i;
  var H = h * i;
  // Total
  document.getElementById("total1").innerHTML = A + " USD";
  document.getElementById("total2").innerHTML = B + " Rupiah";
  document.getElementById("total3").innerHTML = D + " USD";
  document.getElementById("total4").innerHTML = E + " Rupiah";
  document.getElementById("total5").innerHTML = G + " USD";
  document.getElementById("total6").innerHTML = H + " Rupiah";
}

// event & kondisi
function send(e) {
  var name, email, telephone, message;
  name = document.getElementById("name").value;
  email = document.getElementById("email").value;
  telephone = document.getElementById("phoneNumber").value;
  message = document.getElementById("message").value
  if (!name || !email || !telephone || !message) {
    alert("Please fill out all fields!");
    e.preventDefault();
    return;
  }
  if (confirm("Nama : " + name + "\nemail : " + email + "\nTelephone : " + telephone + "\nMessage : " + message + "\nAre you sure?")) {
    alert("Thank you for your submit, i'll reply as soon as possible!");
  } else {
    alert("Cancelled!");
    e.preventDefault();
  }
}

// loop
const swiper = new Swiper('.swiper', {

  loop: true,

  pagination: {
    el: '.swiper-pagination',
    clickable: true,
  },

  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },

});