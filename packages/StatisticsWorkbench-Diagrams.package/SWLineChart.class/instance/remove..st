adding/removing
remove: aVertex
	
	self vertices remove: aVertex.
	self changed: self
