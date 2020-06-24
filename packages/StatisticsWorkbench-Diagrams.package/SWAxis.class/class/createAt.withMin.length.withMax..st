instance creation
createAt: startPoint withMin: min length: length withMax: max

	^ SWAxis createAt: startPoint withMin: min length: length withMax: max step: self defaultStepInterval
