adding/removing
add: aSWDate between: previousSWDate and: nextSWDate

	aSWDate next: nextSWDate.
	previousSWDate next: aSWDate.
	self sizeIncrement