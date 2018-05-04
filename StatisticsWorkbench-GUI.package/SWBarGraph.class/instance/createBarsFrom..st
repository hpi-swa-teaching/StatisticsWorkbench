as yet unclassified
createBarsFrom: aSWData
	
	| xOfBar height |
	
	self flag: #fishy.
	
	aSWData do: [:date |
		xOfBar := self barPositionFor: date x.
		height := self barBottom - (self coordinateSystem positionFor: 0 @ date y) y.
		self add:
			(SWBar new
						width: self barWidth;
						position: (xOfBar - self barWidth) @ (self barBottom - height);
						value: date y;
						height: height;
						date: date;
						bottom: self barBottom)
		]