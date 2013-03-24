io = require('socket.io').listen(8080)


io.sockets.on 'connection', (socket) ->
	sendData = ->
		socket.emit 'newReading', {power: Math.floor(Math.random() * 40) + 120}

	setInterval(sendData, 250)

