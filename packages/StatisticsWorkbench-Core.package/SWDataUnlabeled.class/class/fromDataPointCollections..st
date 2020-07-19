instance creation
fromDataPointCollections: aSequencableCollection

	| data inputDataArrays |
	
	data := self create.
	
	inputDataArrays := aSequencableCollection collect: [:each | each asArray].
	inputDataArrays do: [:each | data add: each].

	^ data
