updating
updatePieKey
	
	self flag: #fishy.
	
	self removePieKey.
	self pieKey pieslices: self pieslices.
	self addPieKey