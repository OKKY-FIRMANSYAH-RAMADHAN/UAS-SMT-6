import {link} from './link.js';

export function hapus() {
    let id = 8;

    link.delete("/pelanggan/" + id).then((res) => {
        let tampil = `<h1>${res.data.pesan}</h1>`;
        document.querySelector('#out').innerHTML = tampil;
    });
}