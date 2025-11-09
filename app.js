const express = require('express');
const app = express();


app.get('/', (req, res) => {
    res.send('Hello world!');
});
const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`BGP app is running on port ${PORT}`);
});