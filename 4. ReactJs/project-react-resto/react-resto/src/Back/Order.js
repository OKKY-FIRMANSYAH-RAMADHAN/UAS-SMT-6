import useGet from '../Hook/useGet';

const Order = () => {

    const [isi] = useGet('/order');
    let no = 1;

    return (
        <div>
            <div className="row">
                <h2 className="text-uppercase text-center">Data Order</h2>
            </div>
            <div className="row">
                <table className="table table-bordered text-center mt-4">
                    <thead className="bg-dark text-light">
                        <tr>
                            <th>No</th>
                            <th>Pelanggan</th>
                            <th>Tgl Order</th>
                            <th>Total</th>
                            <th>Bayar</th>
                            <th>Kembali</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        {
                            isi.map((val, index) => (
                                <tr key={index}>
                                    <td>{no++}</td>
                                    <td>{val.pelanggan}</td>
                                    <td>{val.tglorder}</td>
                                    <td>{val.total}</td>
                                    <td>{val.bayar}</td>
                                    <td>{val.kembali}</td>
                                    <td>{
                                    
                                    val.status === 0 ? <button className="btn btn-danger">Belum Bayar</button> : <button className="btn btn-success">Lunas</button>
                                    
                                    }</td>
                                </tr>
                            ))
                        }
                    </tbody>
                </table>
            </div>
        </div>
    );
}

export default Order;
