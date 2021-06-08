as yet unclassified
enrichWith: namedColumns "this is a Dictionary"
	
	|columnName columnValues|
	(namedColumns collect: [:each| each size]) do: [:columnSize | (columnSize = self size) ifFalse: [SWInvalidDimensionError signal: 'Wrong column size']].
	
	namedColumns associationsDo:[:each|
			columnName := each key.
			columnValues := each value.	
			(1 to: self size) do: [:index | 
				(self at: index) misc add: (columnName -> (columnValues at: index)).
			]
	].
	

	