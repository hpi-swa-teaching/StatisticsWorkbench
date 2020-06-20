initialization
addValueLabel: aString
	
	| labelPosition |
	
	self edgePoints size > 3
		ifTrue: [			
			labelPosition := self positionOfInsideLabel
		]
		ifFalse: [
			labelPosition := self positionOfOutsideLabel
		].
	
	self label: (TextMorph string: aString, '%' size: 20).
	self label center: labelPosition.
	self addMorph: self label.
