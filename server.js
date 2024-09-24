// server.js
const express = require('express');
const app = express();

const port = process.env.PORT || 3000;
const secretMessage = process.env.SECRET_MESSAGE || "No secret available!";

app.get('/', (req, res) => {
  res.send(`Hello World! Secret: ${secretMessage}`);
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
