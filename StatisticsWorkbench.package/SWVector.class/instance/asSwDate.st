converting
asSwDate

	self dimensions = 0
		ifTrue: [ SWInvalidDimensionError signal: 'You must provide at least one dimension' ].
	^ SWDate new
				key: self;
				yourself