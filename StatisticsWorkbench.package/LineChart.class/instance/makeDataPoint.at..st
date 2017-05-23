as yet unclassified
makeDataPoint: realPoint at: printPosition
	
	| newDataPoint |
	newDataPoint := DataPoint new.
	
	newDataPoint realX: realPoint x.
	newDataPoint realY: realPoint y.
	newDataPoint printedX: printPosition x.
	newDataPoint printedY: printPosition y.
	
	newDataPoint position: printPosition.
	
	self dataPoints add: newDataPoint.