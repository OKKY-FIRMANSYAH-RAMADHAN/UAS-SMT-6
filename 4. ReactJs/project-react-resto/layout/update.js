import {link} from './link.js';

export function ubah(params) {
    let id = 2;
    let data = {
        pelanggan : 'Pelanggan',
        alamat  : 'Alamat',
        telp : 'Telp'
    }

    link.put('/pelanggan/'+id,data).then(res=>{
        let tampil = `<h1>${res.data.pesan}</h1>`;
        document.querySelector('#out').innerHTML = tampil;
    });
}