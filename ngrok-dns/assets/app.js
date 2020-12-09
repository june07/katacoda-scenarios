let http = require('http'),
    ngrok = require('ngrok'),
    ngrokDNS = require('@667/ngrok-dns');

http.createServer((request, response) => {
    response.writeHead(200, { 'Content-Type': 'text/html' })
    response.end(`Hello from @667/ngrok-dns! Cheers to many debugging sessions over your fixed enpoint! 🍻`)
}).listen(8080);

(async function () {
    const url = await ngrok.connect({
        addr: 8080,
        onLogEvent: ngrokDNS
    })
})()