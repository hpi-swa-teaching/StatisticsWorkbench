as yet unclassified
preprocessData
	
	| printPosition dataVertices |
	
	dataVertices := Bag new.
	self dataset keysDo: [:xData|
		printPosition := self coordinateSystem positionFor: (xData @ (self dataset at: xData)).
		dataVertices add: printPosition.
		self makeDataPoint: (xData @ (self dataset at: xData)) at: printPosition .
	].
	
	dataVertices := dataVertices sorted: [:a :b | a x <= b x].
	
	^ dataVertices.
	  