import express from 'express'

const app = express()

const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
    res.status(200).json({
        message: "Hello from a container",
        service: 'hello-node',
        pod: process.env.POD_NAME || 'UNKNOWN',
        time: new Date().toISOString()
    });
});
app.get('/readyz', (req, res) => {
    res.status(200).send('Ready')
});
app.get('/healthz', (req, res) => {
    res.status(200).send('Ok')
});

app.listen(PORT, () => {
    console.log(`Example app is listening to the ${PORT}`)
});