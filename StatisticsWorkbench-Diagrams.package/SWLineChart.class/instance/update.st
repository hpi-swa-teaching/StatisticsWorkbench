updating
update
	
	self diagram notNil ifTrue: [
	self diagram updateCoordinateSystem.
	self vertices: self createVertices.
	self lineMorph setVertices: self vertices asArray].