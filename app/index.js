const fs = require('fs');
const express = require('express')

const app = express()
const port = 3000

app.get('/', (req, res) => {
    const greeting = process.env.GREETING;

    const buildTime = fs.readFileSync('build-time.txt');

    res.send(`${greeting} Built at: ${buildTime}`);
})

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
})
