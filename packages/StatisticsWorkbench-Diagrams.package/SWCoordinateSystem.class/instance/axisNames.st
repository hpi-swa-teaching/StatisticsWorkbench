accessing
axisNames

	(self charts isEmpty)
		ifTrue: [^ #('x' 'y')].
		
	^ self charts first data dimensionNames
