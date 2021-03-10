const hari = 9;
let hasil;

switch (hari) {
    case 1:
        hasil = "MINGGU"
        break;
    case 2:
        hasil = "SENIN"
        break;
    case 3:
        hasil = "SELASA"
        break;
    case 4:
        hasil = "RABU"
        break;
    case 5:
        hasil = "KAMIS"
        break;
    case 6:
        hasil = "JUMAT"
        break;
    case 7:
        hasil = "SABTU"
        break;
    default:
        hasil = "TIDAK ADA HARI KE - " + hari
        break;
}

console.log(hasil);

const bln = "Januari";
let bulan;

switch (bln) {
    case "Januari":
        bulan = 1;
        break;
    case "Februari":
        bulan = 2;
        break;
    case "Maret":
        bulan = 3;
        break;
    case "April":
        bulan = 4;
        break;
    case "Mei":
        bulan = 5;
        break;
    case "Juni":
        bulan = 6;
        break;
    case "Juli":
        bulan = 7;
        break;
    case "Agustus":
        bulan = 8;
        break;
    case "September":
        bulan = 9;
        break;
    case "Oktober":
        bulan = 10;
        break;
    case "November":
        bulan = 11;
        break;
    case "Desember":
        bulan = 12;
        break;
    default:
        bulan = "TIDAK ADA BULAN " + bln
        break;
}

console.log(bulan);