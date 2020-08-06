accessing
vertices: verticeCollection

	vertices := verticeCollection sorted: self verticesComparator.
	self lineMorph setVertices: vertices asArray.

