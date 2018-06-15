updating
update
	
	self data notNil ifTrue: [
	self
		updatePieSlices;
		updatePieKey;
		changed: self].