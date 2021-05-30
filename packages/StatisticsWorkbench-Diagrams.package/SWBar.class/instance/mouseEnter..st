event handling
mouseEnter: anEvent
	
	| popup popupText |
	
	popupText := 'X: ' , self vector x asString , String cr , 'Y: ' , self vector y asString.
	popup := TextMorph string: popupText size: 14.
	popup center: self topCenter + (0 @ -20).
	popup openInWorld: self world.
	self infoPopup: popup