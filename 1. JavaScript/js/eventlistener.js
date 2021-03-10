function coba() {
    a = document.querySelector(".isi");
    a.innerHTML = "BELAJAR EVENT LISTENER";
}

// judul.addEventListener("click", coba);

// judul.onmouseover = coba;

judul.onmouseover = function () {
    console.log("COBA FUNCTION");
}