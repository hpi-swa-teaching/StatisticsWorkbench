updating
update
	
	self diagram notNil ifTrue: [
	self diagram updateCoordinateSystem.
	self 
		removeAll;
		createBarsFrom: self data
		].