const express = require('express');
const app = express();

//resolved
app.get('/', (req, res) => {
    res.send('Hello IIIT BGP!');
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`BGP app is running on port ${PORT}`);
});