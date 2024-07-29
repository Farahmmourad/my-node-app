const express = require('express');
const app = express();
const port = 3000;

// Endpoint 1: Home
app.get('/', (req, res) => {
    res.send('Hello, Tarek, this is the home endpoint!');
});

// Endpoint 2: About
app.get('/about', (req, res) => {
    res.send('Hello, this is the about endpoint!');
});

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});

