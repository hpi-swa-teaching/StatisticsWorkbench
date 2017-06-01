as yet unclassified
textColor: aColor
	self submorphsDo: [:morph|morph textColor: aColor].
	textColor := aColor