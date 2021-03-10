let coba = function () {
    return "COBA FUNCTION";
}

let buah = [
    "APEL",
    "MANGGA",
    "JERUK",
    10,
    coba(),
    tes = () => "HASIL RETURN",
    function nama() {
        return "SMKN 2";
    },
];

console.log(buah);

console.log(buah[0]);

for (let i in buah) {
    console.log(buah[i]);
}

console.log(buah[5]);
console.log(buah[6]);