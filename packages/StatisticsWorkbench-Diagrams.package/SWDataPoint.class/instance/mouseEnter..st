event handling
mouseEnter: anEvent
	
	| popup |
	
	popup := TextMorph string: 'X:' , self vector x asString , String cr , 'Y:' , self vector y asString size: 14.
	popup center: self topCenter + (0 @ -20).
	popup openInWorld.
	self infoPopup: popup