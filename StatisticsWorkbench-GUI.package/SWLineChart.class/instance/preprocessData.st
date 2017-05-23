as yet unclassified
preprocessData
	
	| transformedY dataVertices|
	
	dataVertices := Bag new.
	
	self dataset keysDo: [:xData|
		transformedY := self transformY: (self dataset at: xData).
		dataVertices add: (xData @ transformedY).
		self makeDataPoint: (xData @ (self dataset at: xData)) at: (xData @ transformedY).
	].
	
	dataVertices := dataVertices sorted: [:a :b | a x <= b x].
	
	^ dataVertices.
	  