as yet unclassified
updateData
	
	self dataset: Dictionary new.
	self pieslices do: [:pieSlice | self dataset at: pieSlice name put: pieSlice value ].