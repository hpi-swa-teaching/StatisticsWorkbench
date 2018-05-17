adding/removing
removePieSlice: aPieSlice

	self pieSlices remove: aPieSlice.
	aPieSlice removeDependent: self.
	aPieSlice delete