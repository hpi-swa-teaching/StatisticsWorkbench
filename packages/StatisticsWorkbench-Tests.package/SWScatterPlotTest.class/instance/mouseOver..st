support
mouseOver: point

	^ MouseEvent new
		setType: #mouseOver
		position: point
		buttons: 2r000
		hand: hand