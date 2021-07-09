accessing
axisNames

	(self diagram hasChart)
		ifFalse: [^ #('x' 'y')].
		
	^ self diagram dimensionNames
