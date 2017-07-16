as yet unclassified
addAtLast: aSWDate

	self last next: aSWDate.
	self last: aSWDate.
	self changed