const express = require('express');
const { json: jsonParser } = require('body-parser');
const pgClient = require('./pg-connector');
const PORT = process.env.PORT || 3350;

const app = express();

app.get('/', (req, res) => {
  res.status(200).send('Hello World!!!');
});

app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`);
});

