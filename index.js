// index.js
const http = require('http');

const secret = process.env.SECRET_KEY || 'default_secret';

http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end(`Hello World! Secret: ${secret}\n`);
}).listen(3000);

console.log('Server running on http://localhost:3000/');
