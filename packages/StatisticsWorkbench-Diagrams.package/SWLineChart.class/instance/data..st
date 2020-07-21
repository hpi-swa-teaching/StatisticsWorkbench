event handling
data: dataSet
	
	data removeDependent: self.
	data := dataSet.
	data addDependent: self.
	self update;
		applyDataColor;
		changed: self
