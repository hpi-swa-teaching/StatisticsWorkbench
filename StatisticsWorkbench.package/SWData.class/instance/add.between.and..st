as yet unclassified
add: aSWDate between: previousSWDate and: nextSWDate

	aSWDate next: nextSWDate.
	aSWDate previous: previousSWDate.
	nextSWDate previous: aSWDate.
	previousSWDate next: aSWDate