adding/removing
addChart: aSWChart

	self charts add: aSWChart.
	self addMorph: aSWChart.
	aSWChart addDependent: self