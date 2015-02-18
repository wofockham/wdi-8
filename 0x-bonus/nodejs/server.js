var http = require('http');

http.createServer(function(req, res) {
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.end('Server is running');
}).listen(1337, '127.0.0.1');

console.log('Server is running: http://127.0.0.1:1337');
