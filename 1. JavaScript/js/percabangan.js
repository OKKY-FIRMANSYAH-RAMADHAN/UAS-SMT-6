if (false) {
    console.log("Berjalan Jika Benar");
}else{
    console.log("Berjalan Jika Salah");
}

let nilai = 19;
let standart = 82;
let baik = "SELAMAT ANDA LULUS";
let gagal = "MAAF ANDA TIDAK LULUS";
let peringatan = "NILAI SALAH";
let batasatas = 100;
let batasbawah = 0;

if (nilai <= batasatas && nilai >= batasbawah) {
    if (nilai >= standart) {
        console.log(baik);
    }else{
        console.log(gagal);
    }
}else{
    console.log(peringatan);
}

