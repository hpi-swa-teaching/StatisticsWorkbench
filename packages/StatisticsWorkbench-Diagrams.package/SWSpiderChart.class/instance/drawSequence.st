as yet unclassified
drawSequence
	
	| polygonMorph |
	
	self createVertices do: [:vertices | 
		polygonMorph := PolygonMorph new.
		polygonMorph vertices: vertices color: (TranslucentColor red alpha: 0.5) borderWidth: 2 borderColor: Color black.
		self addMorph: polygonMorph.
		self sequencePolygons add: polygonMorph]