as yet unclassified
updateMax
	
	
	self max ~= self lastMax ifTrue: [
		self orientation = #horizontal ifTrue: [
			self setVertices: {self firstVertex . (self firstVertex  x +  self length) @ self lastVertex y}.]
	ifFalse: [self setVertices: {self firstVertex . self firstVertex  x @ (self firstVertex  y - self length)}.].
	self lastMax:  self max.
	self changed.]