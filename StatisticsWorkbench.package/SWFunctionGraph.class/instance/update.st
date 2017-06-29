as yet unclassified
update
	| newVertices |
	
	newVertices := self generateVertices.
	newVertices := self sortVertices: newVertices.
	self lineMorph setVertices: newVertices