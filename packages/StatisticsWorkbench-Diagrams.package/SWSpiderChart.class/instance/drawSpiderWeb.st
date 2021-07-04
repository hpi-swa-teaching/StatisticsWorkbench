as yet unclassified
drawSpiderWeb

	self spiderWeb: (SWSpiderWeb createWithDimensions: 5 radius: (self width/2) at: self center).
	self addMorph: self spiderWeb