initialization
draw
	self 
		setVertices: (Array with: self startPoint with: self endPoint);
		makeForwardArrow;
		openInWorld.