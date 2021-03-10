let fungsi = function (nama) {
    console.log("Belajar Function " + nama);
}

fungsi("joni");

// ----------------------------------------------

let contoh = (nama) => {
    console.log("Belajar Function " + nama);
}

contoh("Abi");

// ----------------------------------------------

let tambah = function (a,b) {
    return a + b;
}

console.log(tambah(10,9));

// ----------------------------------------------

let plus = (a,b) => a+b;

console.log(plus(2,3));

// ----------------------------------------------

let hasil = (a) => a +5;

console.log(hasil(10));

// ----------------------------------------------

let lagi = () => console.log("Coba Lagi");

lagi();

// ----------------------------------------------

let belajar = () => {
    console.log("BARIS SATU");
    console.log("BARIS DUA");
    console.log("BARIS TIGA");
    console.log("BARIS SELANJUTNYA");
}

belajar();

// ----------------------------------------------

let nilai = 1;

let uji = nilai < 7 ? () => (predikat = "GAGAL") : () => (predikat = "LULUS");
console.log(uji());