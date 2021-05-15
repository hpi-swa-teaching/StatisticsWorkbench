support
yellowMouseDownAt: point

	^ MouseButtonEvent new
		setType: #mouseDown
		position: point
		which: 2r000 "no change"
		buttons: 2r010 "yellow pressed"
		nClicks: 1
		hand: self hand
		stamp: Time millisecondClockValue