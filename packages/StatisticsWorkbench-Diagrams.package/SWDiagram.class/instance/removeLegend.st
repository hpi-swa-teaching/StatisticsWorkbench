updating
removeLegend

	self legend pieKeyNames copy do: [:x | x delete].
	self legend pieKeyNames removeAll.
	self legend pieKeyColors copy do: [:x | x delete].
	self legend pieKeyColors removeAll