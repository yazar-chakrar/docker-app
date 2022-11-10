const express = require('express');
const app = express();
const PORT=4000;

app.get('/', (req, res) => {
    res.send('<h1>Hello world, its YAZAR! Im in dockerrr</h1>')
})

app.listen(
    PORT,
    () => console.log(`app is running on port ${PORT}`)
);