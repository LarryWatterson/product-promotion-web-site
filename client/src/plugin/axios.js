import axios from 'axios';

const instance = axios.create({
    baseURL: process.env.API_URL,
    timeout: 100000,
    headers: {
        'Content-Type': 'application/json',
        Accept: ['application/json', 'multipart/form-data'],
    },
});

instance.interceptors.request.use(
    (config) => {
        const token = localStorage.getItem('token');
        if (token) {
            config.headers['api-secret-key'] = token;
        }
        return config;
    },
    (error) => {
        return Promise.reject(error);
    }
);

instance.interceptors.response.use(
    (response) => {
        return response;
    },
    (error) => {
        return Promise.reject(error);
    }
);

export default instance;
