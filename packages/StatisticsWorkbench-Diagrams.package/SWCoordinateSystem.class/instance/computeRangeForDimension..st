computing
computeRangeForDimension: aDimension

	| range globalMax globalMin |

	(self diagram charts)
		ifEmpty: [^ Array with: SWAxis defaultMin with: SWAxis defaultMax].
	
	globalMin := self diagram minimumOfAllChartsForDimension: aDimension.
	globalMax := self diagram maximumOfAllChartsForDimension: aDimension.
	range := Array with: globalMin with: globalMax.
	
	range := self includeZeroInRange: range.
	
	(self centeredAxes)
		ifTrue: [range := self matchRangeExtent: range].
	
	^ range
