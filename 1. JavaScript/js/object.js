const objek = {
    nama: "OKKY FIRMANSYAH",
    telp: 9890890809,

    buah: ["anggur","apel","mangga"],

    coba: function() {
        return "SMKN 2";
    },

    boleh: true,
    "tulis" : 124
}

console.log(objek.nama);
console.log(objek.telp);
console.log(objek.boleh);
console.log(objek.coba());
console.log(objek.buah[2]);
console.log(objek["tulis"]);
