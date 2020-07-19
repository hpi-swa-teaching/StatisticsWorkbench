instance creation
fromDataPointCollections: aSequencableCollection

	| data labels inputDataOrderedCollection inputDataArrays |
	
	data := self create.
	
	inputDataOrderedCollection := (aSequencableCollection collect: [:each | each asOrderedCollection]).
	labels := inputDataOrderedCollection collect: [:each | each removeLast].
	inputDataArrays := inputDataOrderedCollection collect: [:each | each asArray].
	inputDataArrays do: [:each | data add: each].
	
	data setLabels: labels.

	^ data
