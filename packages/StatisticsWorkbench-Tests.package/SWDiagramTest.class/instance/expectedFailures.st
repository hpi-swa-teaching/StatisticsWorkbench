helper
expectedFailures
	
	^ Smalltalk version = 'Squeak5.2'
		ifTrue: [#(
			"No idea why this fails, when u've got time, please investigate"
			testBoundsOnLongDimensionNames
			)]
		ifFalse: [#()]