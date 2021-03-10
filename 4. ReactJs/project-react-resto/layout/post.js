import {link} from './link.js';

export function post() {
    let data = {
        pelanggan : 'Pelanggan Axios',
        alamat  : 'Alamat Axios',
        telp : '089898908'
    }

    link.post('/pelanggan',data).then(res=>{
        let tampil = `<h1>${res.data.pesan}</h1>`;
        document.querySelector('#out').innerHTML = tampil;
    });
}