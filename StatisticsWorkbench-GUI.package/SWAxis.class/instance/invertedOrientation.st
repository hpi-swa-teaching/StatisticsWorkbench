accessing
invertedOrientation

	self orientation = #horizontal
		ifTrue: [	 ^ #vertical ]
		ifFalse: [ ^ #horizontal ]