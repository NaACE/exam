function changeStyleDiv() {
    if(document.getElementById('hideabDiv').style.display == "block"){
        document.getElementById('hideabDiv').style.display = "none";
    } else {
        document.getElementById('hideabDiv').style.display = "block";
    }
}

function openNav() {
    if(document.getElementById("mySidenav").style.width == "250px") {
        document.getElementById("mySidenav").style.width = "0";
    } else {
        document.getElementById("mySidenav").style.width = "250px";
    }
}

function myFunction() {
    var x = document.getElementById("myLinks");
    if (x.style.display === "block") {
        x.style.display = "none";
    } else {
        x.style.display = "block";
    }
}