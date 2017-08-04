as yet unclassified
executeMeAndSuccessors
	self execute.
	self successors do: [:successor | successor executeMeAndSuccessors]