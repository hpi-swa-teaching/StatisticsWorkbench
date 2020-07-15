computing
maximumOfAllChartsForDimension: aDimension
	
	| maxima |
	
	maxima := Set new.

	self charts do: [:chart | maxima add: (chart data maximum: aDimension)].
	
	^ maxima max
