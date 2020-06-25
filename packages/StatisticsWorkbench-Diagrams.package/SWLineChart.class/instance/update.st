updating
update
	
	self diagram coordinateSystem update.
	self vertices: self createVertices.
	self lineMorph setVertices: self vertices asArray.
	self lineMorph borderColor: self lineColor
