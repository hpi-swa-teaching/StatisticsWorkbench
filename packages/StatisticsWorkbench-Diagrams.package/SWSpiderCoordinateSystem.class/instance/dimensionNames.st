accessing
dimensionNames

	(self diagram hasChart)
		ifFalse: [^ #('x' 'y' 'z' 'c' 'i')].
		
	^ self diagram dimensionNames
