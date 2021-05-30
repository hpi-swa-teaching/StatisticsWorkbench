testing
mouseEnter: point

	^ MouseEvent new
		setType: #mouseEnter
		position: point
		buttons: 2r000
		hand: hand