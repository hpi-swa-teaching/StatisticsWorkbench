nil
createBarsFrom: aDictionary
	
	| xOfBar |
	
	aDictionary keysDo: [:key| 
		xOfBar := self barPositionFor: key.
		self add: 
			(SWBar new
			             width: self barWidth; 
					 position: (xOfBar - self barWidth)@ self barBottom;
					 value: (aDictionary at: key);
					 bottom: self barBottom;
					 height: self barBottom - (self coordinateSystem positionFor: 0 @ (aDictionary at: key)) y )].