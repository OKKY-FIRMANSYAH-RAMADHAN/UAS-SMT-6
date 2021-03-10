// Array -> String, number, objek, function, campuran

let nilai = [
    {nama : "Budi", ipa : 80, bahasa : 90, matamatika:70},
    {nama : "Joni", ipa : 90, bahasa : 80, matamatika:80},
    {nama : "Tejo", ipa : 90, bahasa : 70, matamatika:90},
    {nama : "Siti", ipa : 60, bahasa : 80, matamatika:70},
];

let nama = ["Budi" , "Joni", "Tejo", "Siti"];
// nama.push("Okky", "Boy");

// console.log(nama. shift());

// nama.unshift("Nano", "Nini")

// console.log(nama.slice(0,3));

// console.log(nama.splice(5,2));

// console.log(nama. pop());

// nama.splice(0,3);

// console.log(nilai[0].nama);

// console.log(nama);

let mapel = ["Ipa" , "Bahasa", "Matematika"];

// console.log(nama.concat(mapel));

// console.log(nama.concat(["Ips", "Sejarah"]));

// for (let index = 0; index < nama.length; index++) {
//     console.log(nama[index]);
// }

// nama.forEach(function (a) {
//    console.log(a); 
// });

// nama.forEach((a) => console.log(a));

// nilai.filter(function (a) {
//     if (a.ipa > 80) {
//         console.log(a);
//     }
// });

//console.log(nilai);

// nilai.filter((a) => a.ipa > 80 && a.matamatika > 80 ? console.log(a.nama) : null)

// let siswa = nilai.map(function (a) {
//     return a.nama;
// });

// let siswa = nilai.map((a) => [a.nama, a.ipa]);

// console.log(siswa);

// mapel.sort();

// console.log(mapel);

// let hasil = nilai.reduce(function (a , b) {
//     return (a = a + b.ipa);
// }, 0);

let hasil = nilai.reduce((a,b) => (a+= b.matamatika), 0);

console.log(hasil);