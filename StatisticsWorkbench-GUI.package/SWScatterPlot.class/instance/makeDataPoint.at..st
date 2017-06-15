as yet unclassified
makeDataPoint: realPoint at: printPosition
	
	| newDataPoint |
	newDataPoint := SWDataPoint new.
	
	newDataPoint realPoint: realPoint;
					renderedPoint: printPosition;
					width: 10;
					height: 10;
					color: Color orange;
					borderColor: Color orange.
	
	newDataPoint position: 
		(newDataPoint renderedPoint x - (newDataPoint width * 0.5)) @ (newDataPoint renderedPoint y - (newDataPoint height * 0.5)).
	
	self addDataPoint: newDataPoint
	