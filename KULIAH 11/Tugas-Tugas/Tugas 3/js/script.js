$('body').append(`<div class="--tagline"><a href="https://www.instagram.com/jordyy.lf/" target="_blank">#JordyMadeThis</a></div>`);
alert("Welcome To Jordy Website Commission!");
window.alert("Please read before order!");

var content;
var time = new Date().getHours();
if (time < 10) {
    content = "Good Morning y'all!";
} else if (time < 18) {
    content = "Good Afternoon y'all!";
} else {
    content = "Good Evening y'all!";
}
document.getElementById("greetings").innerHTML = content;
document.getElementById("greetings").style.fontStyle = "italic";

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
        document.getElementById("day").innerHTML = "Today is " + Hari;

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

function send(e) {
    var name, email, age, telephone, message; 
    name = document.getElementById("nama").value;
    email = document.getElementById("Email").value;
    age = document.getElementById("usia").value;
    telephone = document.getElementById("telpon").value;
    message = document.getElementById("pesan").value
    if (confirm("Nama : " + name + "\nEmail : " + email + " \nAge : " + age + "\nTelephone : " + telephone + "\nMessage : " + message + "\nAre you sure?")) {
        alert("Thank you for your submit, i'll reply as soon as possible!");
    } else {
        alert("Cancelled!");
        e.preventDefault();
    }
}   