as yet unclassified
createBarsFrom: aSWData
	
	| xOfBar height ownBarWidth|
	
	self flag: #fishy.
	
	aSWData do: [:vector |
		xOfBar := self barPositionFor: vector x.
		height := self barBottom - (self coordinateSystem positionFor: 0 @ vector y) y.
		vector elementSize  notNil
		ifTrue: [ ownBarWidth := vector elementSize]
		ifFalse: [ ownBarWidth := self barWidth].
		self add:
			(SWBar new
						width: ownBarWidth;
						position: (xOfBar - self barWidth) @ (self barBottom - height);
						value: vector y;
						height: height;
						date: vector;
						bottom: self barBottom)
		]