as yet unclassified
makeDataPoint: realPoint at: printPosition
	
	| newDataPoint |
	newDataPoint := SWDataPoint new openInWorld.
	
	newDataPoint realX: realPoint x;
							realY: realPoint y;
							printedX: printPosition x;
							printedY: printPosition y;
							width: 10;
							height: 10;
							color: Color orange;
							borderColor: Color orange.
	
	newDataPoint position: 
		(newDataPoint  printedX - (newDataPoint width * 0.5)) @ (newDataPoint printedY - 		(newDataPoint height * 0.5)).
	
	self dataPoints add: newDataPoint.
	