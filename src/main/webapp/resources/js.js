function changeStyleDiv() {
    if(document.getElementById('hideabDiv').style.display == "block"){
        document.getElementById('hideabDiv').style.display = "none";
    } else {
        document.getElementById('hideabDiv').style.display = "block";
    }
}


function openNav() {
    if(document.getElementById("mySidenav").style.width == "500px") {
        document.getElementById("mySidenav").style.width = "0";
    } else {
        document.getElementById("mySidenav").style.width = "500px";
    }
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}

function myFunction() {
    var x = document.getElementById("myLinks");
    if (x.style.display === "block") {
        x.style.display = "none";
    } else {
        x.style.display = "block";
    }
}

function openMasters() {
    document.getElementById("all_master").style.display = "block";
    document.getElementById("mainNav").style.display = "none";
}

function Nikolai() {
    document.getElementById("name_master").textContent = "Nikolai";

    document.getElementById("all_master").style.display = "none";
    document.getElementById("mainNav").style.display = "block";
}
function Vladimir() {
    document.getElementById("name_master").textContent = "Vladimir";

    document.getElementById("all_master").style.display = "none";
    document.getElementById("mainNav").style.display = "block";
}
function Dmitry() {
    document.getElementById("name_master").textContent = "Dmitry";

    document.getElementById("all_master").style.display = "none";
    document.getElementById("mainNav").style.display = "block";
}
function Artems() {
    document.getElementById("name_master").textContent = "Artems";

    document.getElementById("all_master").style.display = "none";
    document.getElementById("mainNav").style.display = "block";
}