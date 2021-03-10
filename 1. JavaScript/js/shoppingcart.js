let tblmenu = [
  {
    idmenu: 1,
    idkategori: 1,
    menu: "Nasi Goreng",
    gambar: "nasi goreng.jpg",
    harga: 10000,
  },
  {
    idmenu: 2,
    idkategori: 1,
    menu: "Nasi Padang",
    gambar: "nasi padang.jpg",
    harga: 20000,
  },
  {
    idmenu: 3,
    idkategori: 2,
    menu: "Nasi Bakar",
    gambar: "nasi bakar.jpg",
    harga: 30000,
  },
  {
    idmenu: 4,
    idkategori: 2,
    menu: "Nasi Kuning",
    gambar: "nasi kuning.jpg",
    harga: 8000,
  },
  {
    idmenu: 5,
    idkategori: 3,
    menu: "Nasi Ayam",
    gambar: "nasi ayam.jpg",
    harga: 15000,
  },
  {
    idmenu: 6,
    idkategori: 3,
    menu: "Nasi Daging",
    gambar: "nasi daging.jpg",
    harga: 10000,
  },
];

let tampil = tblmenu.map(function (kolom) {
  return `<div class="product-content">
    <div class="image">
        <img src="image/${kolom.gambar}" alt="">
    </div>
    <div class="titel">
        <h2>${kolom.menu}</h2>
    </div>
    <div class="harga">
        <h2>Rp. ${kolom.harga}</h2>
    </div>

    <div class="btn-beli">
        <button data-idmenu="${kolom.idmenu}">Beli</button>
    </div>
</div>`;
});

let isi = document.querySelector(".produk");
isi.innerHTML = tampil;

let btnbeli = document.querySelectorAll(".btn-beli > button");

let cart = [];

for (let index = 0; index < btnbeli.length; index++) {
  btnbeli[index].onclick = function () {
    //cart.push(btnbeli[index].dataset["idmenu"]);

    tblmenu.filter(function (a) {
      if (a.idmenu == btnbeli[index].dataset["idmenu"]) {
        cart.push(a);
        console.log(cart);
      }
    });
  };
}

// console.log(cart);
