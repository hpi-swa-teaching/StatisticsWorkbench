as yet unclassified
addAtFirst: aSWDate

	self first previous: aSWDate.
	aSWDate next: self first.
	self first: aSWDate.
	self changed