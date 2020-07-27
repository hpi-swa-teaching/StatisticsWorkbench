accessing
data: dataSet

	data removeDependent: self.
	data := dataSet.
	data addDependent: self.
	self dataName: dataSet dataName.
	self update;
    applyDataColor;
		changed: self
