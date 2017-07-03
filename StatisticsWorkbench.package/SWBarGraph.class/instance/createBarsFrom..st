nil
createBarsFrom: aSWData
	
	| xOfBar |
	
	aSWData do: [:date |
		xOfBar := self barPositionFor: date key x.
		self add:
			(SWBar new
						width: self barWidth;
						position: (xOfBar - self barWidth) @ self barBottom;
						value: (date key y);
						bottom: self barBottom;
						height: self barBottom - (self coordinateSystem positionFor: 0 @ date key y) y)
		]