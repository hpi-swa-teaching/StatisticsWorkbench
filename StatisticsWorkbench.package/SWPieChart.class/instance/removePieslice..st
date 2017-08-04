adding/removing
removePieslice: aPieslice

	self pieslices remove: aPieslice.
	aPieslice removeDependent: self.
	aPieslice delete