testing
expectedFailures
	
	^ Smalltalk version = 'Squeak5.2'
		ifTrue: [#(
			"5.2. does not support TextMorph string: size:"
			testXYPopupCorrectLabel
			testXYPopupOnHover
			)]
		ifFalse: [#()]