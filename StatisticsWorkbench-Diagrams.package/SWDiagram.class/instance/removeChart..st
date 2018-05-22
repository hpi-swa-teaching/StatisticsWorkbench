adding/removing
removeChart: aSWChart

	self charts remove: aSWChart.
	aSWChart 
		removeDependent: self;
		delete