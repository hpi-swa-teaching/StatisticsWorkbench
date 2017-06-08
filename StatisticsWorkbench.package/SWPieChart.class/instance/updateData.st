as yet unclassified
updateData
	
	self data: Dictionary new.
	
	self pieslices do: [:pieSlice | self data at: pieSlice name put: pieSlice value ].