as yet unclassified
computePrintPositionFrom: aRealPosition

	| transformedX transformedY |
	
	transformedX := self coordinateSystem xAxis startPoint x +
								((aRealPosition x - self coordinateSystem xAxis min) * 
								self coordinateSystem xAxis normedMarkerLength).
	transformedY := 	self coordinateSystem yAxis startPoint y - 
								((aRealPosition y + self coordinateSystem yAxis min) *
								self coordinateSystem yAxis normedMarkerLength).
								
	^ (transformedX @ transformedY)