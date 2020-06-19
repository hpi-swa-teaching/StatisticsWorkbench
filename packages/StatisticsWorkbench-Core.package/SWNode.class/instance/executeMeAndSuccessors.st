workflow execution
executeMeAndSuccessors

	self execute.
	self successors do: [:successor | successor executeMeAndSuccessors]
