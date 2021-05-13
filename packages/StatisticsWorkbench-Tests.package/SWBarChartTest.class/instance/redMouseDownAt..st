support
redMouseDownAt: point

	^ MouseButtonEvent new
		setType: #mouseDown
		position: point
		which: 2r000 "no change"
		buttons: 2r100 "red/left pressed"
		hand: hand
		stamp: Time millisecondClockValue