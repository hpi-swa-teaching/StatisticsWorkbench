accessing
axisNames

	(self diagram charts isEmpty)
		ifTrue: [^ #('x' 'y')].
		
	^ self diagram dimensionNames
