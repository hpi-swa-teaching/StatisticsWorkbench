as yet unclassified
positionLegend 

	^ self orientation = #horizontal ifTrue: [self  lastVertex ]
	ifFalse: [(self lastVertex x - 50)@ self lastVertex y ].