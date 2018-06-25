privateStatistics
allDifferences: aDimension
	| xValues differences |
	
	differences := OrderedCollection new.
	xValues := (self selectDimension: aDimension) copy sort.
	(xValues size = 1)
		ifTrue: [differences add: xValues first]
		ifFalse: [1 to: xValues size - 1 do: [:index | 
			differences add: ((xValues at: index + 1) - (xValues at: index))]].
	^ differences