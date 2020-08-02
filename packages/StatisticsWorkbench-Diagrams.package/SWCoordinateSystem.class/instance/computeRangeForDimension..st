computing
computeRangeForDimension: aDimension

	| range |

	(self diagram charts)
		ifEmpty: [^ (Array with: (SWAxis defaultMin) with: (SWAxis defaultMax))].
	
	range := Array with: (self diagram minimumOfAllChartsForDimension: aDimension) with: (self diagram maximumOfAllChartsForDimension: aDimension).
	
	range := self includeZeroInRange: range.
	
	(self centeredAxes)
		ifTrue: [range := self matchRangeExtent: range].
	
	^ range
