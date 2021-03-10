import useGet from '../Hook/useGet';
import useDelete from '../Hook/useDelete';

const Pelanggan = () => {

    const [isi] = useGet('/pelanggan');
    let no = 1;

    const {hapus, pesan} = useDelete('/pelanggan/');

    return (
        <div>
            <div className="row">
                <h2 className="text-uppercase text-center">Data Pelanggan</h2>
            </div>
            <div className="row">
                <div>
                <p>{pesan}</p>
                </div>
            </div>
            <div className="row">
                <table className="table table-bordered text-center mt-4">
                    <thead className="bg-dark text-light">
                        <tr>
                            <th>No</th>
                            <th>Pelanggan</th>
                            <th>Alamat</th>
                            <th>Telepon</th>
                            <th>Hapus</th>
                            <th>Ubah</th>
                        </tr>
                    </thead>
                    <tbody>
                        {
                            isi.map((val, index) => (
                                <tr key={index}>
                                    <td>{no++}</td>
                                    <td>{val.pelanggan}</td>
                                    <td>{val.alamat}</td>
                                    <td>{val.telp}</td>
                                    <td><button onClick={() => hapus(val.idpelanggan)} className="btn btn-danger">Hapus</button></td>
                                    {/* <td><button onClick={() => showData(val.idmenu)} className="btn btn-warning">Ubah</button></td> */}
                                </tr>
                            ))
                        }
                    </tbody>
                </table>
            </div>
        </div>
    );
}

export default Pelanggan;
