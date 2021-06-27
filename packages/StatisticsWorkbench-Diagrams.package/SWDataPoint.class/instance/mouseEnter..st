event handling
mouseEnter: anEvent
	
	| popup popupText |
	
	popupText := 'X: ' , self vector x asString , String cr , 'Y: ' , self vector y asString.
	popup := TextMorph new contents: popupText.
	popup center: self topCenter + (0 @ -20).
	self addMorph: popup.
	self infoPopup: popup