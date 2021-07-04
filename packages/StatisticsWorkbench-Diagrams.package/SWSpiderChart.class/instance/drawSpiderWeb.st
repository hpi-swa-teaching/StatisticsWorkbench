as yet unclassified
drawSpiderWeb

	self spiderWeb ifNotNil: [spiderWeb delete].
	self spiderWeb: (SWSpiderWeb createWithDimensions: self dimensions radius: (self width/2) at: self center).
	self addMorph: self spiderWeb