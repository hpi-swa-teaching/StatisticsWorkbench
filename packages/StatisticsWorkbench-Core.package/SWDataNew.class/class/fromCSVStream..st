instance creation
fromCSVStream: aStream

	| rows dimensionNames labelColumnIndex datapoints |
	
	rows := (CSVParser parse: aStream) asOrderedCollection.
	
	dimensionNames := rows removeFirst.
	labelColumnIndex := dimensionNames indexOf: 'Labels'. 
	
	datapoints := rows collect: [:row | (1 to: row size) collect: [:i | (i = labelColumnIndex)
																						ifTrue: [row at: i]
																						ifFalse: [(row at: i) asNumber]]].
	
	^ self fromDatapoints: datapoints withDimensionNames: dimensionNames
