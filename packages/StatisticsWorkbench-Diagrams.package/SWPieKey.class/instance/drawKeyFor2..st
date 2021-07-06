geometry
drawKeyFor2: aDiagram
	| positionFactor |
	
	positionFactor := self class defaultKeyPositionFactor.
	self key topLeft: aDiagram topRight.
	aDiagram charts do: [:chart |	self 
									drawKeyPointOf2: chart at: positionFactor;
									drawColorSwatchOf2: chart at: positionFactor.
									positionFactor := positionFactor + 1].
	
	self key extent: (self computeKeyExtent2: aDiagram charts).
