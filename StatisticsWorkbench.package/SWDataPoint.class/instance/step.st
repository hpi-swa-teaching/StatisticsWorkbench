as yet unclassified
step
	
	self printedX:  self realX.
	self printedY: (self transformY: self realY).
	
	self position: (self printedX - (self width * 0.5)) @ (self printedY - (self height * 0.5)).