accessing
vertices: anObject

	vertices := anObject sorted: self verticesComparator.
	self lineMorph setVertices: vertices asArray 
