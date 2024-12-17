$('body').append(`<div class="--tagline"><a href="https://www.instagram.com/jordyy.lf/" target="_blank">#JordyMadeThis</a></div>`);
    alert("Welcome To Jordy Website Commission!");
    window.alert("Please read before order!");

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