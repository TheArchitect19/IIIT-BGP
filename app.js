const express = require('express');
const app = express();

//resolved deployment
app.get('/', (req, res) => {
    res.send('Hello IIIT BGP!');
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`BGP app is running on port ${PORT}`);
});