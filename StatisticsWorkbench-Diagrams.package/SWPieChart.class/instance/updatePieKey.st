updating
updatePieKey
	
	self flag: #fishy.
	
	self removePieKey.
	self pieKey pieSlices: self pieSlices.
	self addPieKey