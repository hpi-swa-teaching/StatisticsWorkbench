as yet unclassified
makeDataPoint: realPoint at: printPosition
	
	| newDataPoint |
	newDataPoint := DataPoint new openInWorld.
	
	newDataPoint realX: realPoint x.
	newDataPoint realY: realPoint y.
	newDataPoint printedX: printPosition x.
	newDataPoint printedY: printPosition y.
	newDataPoint lineGraph: self.
	
	newDataPoint position: 
		(newDataPoint  printedX - (newDataPoint width * 0.5)) @ (newDataPoint printedY - 		(newDataPoint height * 0.5)).
	
	self dataPoints add: newDataPoint.
	