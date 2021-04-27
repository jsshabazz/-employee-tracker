const express = require('express');
const app = express();
const path = require('path');
const members = require('./Members');



const logger = (req, res, next) => {
  console.log(`${req.protocol}://${req.get('host')}${req.originalUrl}`);
  next();
};


app.use(logger);



app.get('/api/members', (req, res) => {
res.json(members);
});


app.use(express.static(path.join(__dirname, 'public')));

const PORT = process.env.PORT || 5000;

app.listen(3000, function() {
  console.log('listening on 5000')
})

app.listen(PORT, () => console.log ('Server started on port ${PORT}'));