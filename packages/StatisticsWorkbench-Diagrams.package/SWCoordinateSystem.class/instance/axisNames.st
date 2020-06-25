accessing
axisNames

	(self diagram charts isEmpty)
		ifTrue: [^ #('x' 'y')].
		
	^ self diagram charts first data dimensionNames
