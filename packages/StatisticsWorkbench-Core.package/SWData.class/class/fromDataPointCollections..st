instance creation
fromDataPointCollections: aSequencableCollection

		| data |
		
		data := self create.
		aSequencableCollection do: [:each | data add: each asArray].
		
		^ data

	