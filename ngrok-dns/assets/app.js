let http = require('http'),
    ngrok = require('ngrok'),
    ngrokDNS = require('@667/ngrok-dns');

http.createServer((request, response) => {
    response.writeHead(200, { 'Content-Type': 'text/plain' })
    response.end('Hello World...')
}).listen(8080);

(async function () {
    const url = await ngrok.connect({
        addr: 8080,
        onLogEvent: ngrokDNS
    })
})()