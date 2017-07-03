as yet unclassified
addAtLast: aSWDate

	self last next: aSWDate.
	aSWDate previous: self last.
	self last: aSWDate