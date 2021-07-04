as yet unclassified
drawSpiderWeb

	self spiderWeb ifNotNil: [spiderWeb delete].
	self spiderWeb: (SWSpiderWeb createWithDimensions: self dimensions radius: self radius at: self center).
	self addMorph: self spiderWeb