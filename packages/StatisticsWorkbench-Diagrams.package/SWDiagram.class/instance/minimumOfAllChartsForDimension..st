computing
minimumOfAllChartsForDimension: aDimension
	
	| minima |
	
	minima := Set new.

	self charts do: [:chart | minima add: (chart data minimum: aDimension)].
	
	^ minima min
