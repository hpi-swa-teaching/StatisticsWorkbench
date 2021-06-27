instance creation
fromNamedColumns: aDictionary

	^ self
		fromNamedColumns: aDictionary
		xValues: aDictionary keys first
		yValues: aDictionary keys first