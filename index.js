const express = require('express');
const app = express();
const port = process.env.PORT || 3000;
const secret = process.env.APP_SECRET;

app.get('/', (req, res) => {
  res.send(`Secret: ${secret}`);
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
