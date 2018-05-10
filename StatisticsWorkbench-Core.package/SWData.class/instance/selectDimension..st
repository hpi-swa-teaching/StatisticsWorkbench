as yet unclassified
selectDimension: aDimension
	| values dimensionIndex |
	aDimension isSymbol
		ifTrue: [dimensionIndex := self indexOfAxis: aDimension]
		ifFalse: [dimensionIndex := aDimension].
	(self dimensions < dimensionIndex or: [dimensionIndex < 1])
		ifTrue: [ SWInvalidDimensionError signal: 'Passed dimension is invalid.' ]. 
	values := OrderedCollection new.
	self do: [:each | values add: (each at: dimensionIndex)].
	^ values.