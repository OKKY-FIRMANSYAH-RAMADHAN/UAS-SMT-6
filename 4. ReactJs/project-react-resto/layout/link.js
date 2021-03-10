const url = "http://localhost:8000/api";
let token = "lM1zxYdroKLNCU4r6zsgtOMG99pz3JpvWHoFxNAp";

    export const link = axios.create({
        baseURL: url,
        headers: {
            'api_token': token
        }
    });