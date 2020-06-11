creation
createBarsFrom: aSWData	
	| xOfBar height bar |
	
	aSWData do: [:vector |
		xOfBar := self barPositionFor: vector x.
		height := self barBottom - (self coordinateSystem positionFor: (0 @ vector y)) y.
		bar := (SWBar new
						width: self barWidth;
						position: ((xOfBar - self barWidth) @ (self barBottom - height));
						height: height;
						date: vector;
						color: self barColor;
						caption: vector labelName; 
						bottom: self barBottom).
		bar barLabelMorph color: self barLabelColor.
		self add: bar]