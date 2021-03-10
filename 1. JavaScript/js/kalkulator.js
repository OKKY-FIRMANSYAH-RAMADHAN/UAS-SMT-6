let btn = document.querySelectorAll(".btn-angka > button");
let tampil = document.querySelector("#tampil");
let math = document.querySelectorAll(".btn-math > button");
let pilihan = null;
let hasil;

// tampil.value = btn[8].innerHTML;

// console.log(btn[9].innerHTML);


for (let index = 0; index < btn.length; index++) {
    btn[index].onclick = function () {
        // console.log(btn[index].innerHTML);
        if (tampil.value == "0") {
            tampil.value = btn[index].innerHTML;
        } else {
            tampil.value += btn[index].innerHTML;
        }
    }
}

btn[9].onclick = function () {
    tampil.value = "0"
}

math[0].onclick = function () {
    pilihan = "tambah";
    x = tampil.value;
    tampil.value = "0";
}

math[1].onclick = function () {
    pilihan = "kurang";
    x = tampil.value;
    tampil.value = "0";
}

math[2].onclick = function () {
    pilihan = "kali";
    x = tampil.value;
    tampil.value = "0";
}

math[3].onclick = function () {
    pilihan = "bagi";
    x = tampil.value;
    tampil.value = "0";
}

btn[11].onclick = function () {
    y = tampil.value;
    tampil.value = kalkulator(pilihan);
}

function kalkulator(pilihan) {
    if (pilihan != null) {
        switch (pilihan) {
            case "tambah":
                hasil = parseFloat(x) + parseFloat(y);
                break;
            case "kurang":
                hasil = parseFloat(x) - parseFloat(y);
                break;
            case "kali":
                hasil = parseFloat(x) * parseFloat(y);
                break;
            case "bagi":
                hasil = parseFloat(x) / parseFloat(y);
                break;

            default:
                break;
        }
        return hasil;
    }
}