nil
createBarsFrom: aSWData
	
	| xOfBar height |
	
	aSWData do: [:date |
		xOfBar := self barPositionFor: date key x.
		height := self barBottom - (self coordinateSystem positionFor: 0 @ date key y) y.
		self add:
			(SWBar new
						width: self barWidth;
						position: (xOfBar - self barWidth) @ (self barBottom - height);
						value: date key y;
						height: height;
						date: date;
						bottom: self barBottom)
		]