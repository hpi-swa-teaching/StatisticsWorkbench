nil
updateMin
	
	self min ~= self lastMin ifTrue: [
	self orientation = #horizontal ifTrue:[
	self setVertices: {(self firstVertex  x +  self min) @ self firstVertex y. self lastVertex}.]
	ifFalse: [self setVertices: {(self firstVertex  x  @ (self lastVertex  y + self length)). self lastVertex }] .
	self lastMin: self min.
	self changed.].