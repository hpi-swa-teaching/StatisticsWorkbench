as yet unclassified
drawSequence
	
	| polygonMorph |
	
	self createVertices do: [:vertices | 
		polygonMorph := PolygonMorph new.
		polygonMorph vertices: vertices color: Color red borderWidth: 4 borderColor: Color black.
		self addMorph: polygonMorph.
		self sequencePolygons add: polygonMorph]