updating
removeLegend

	self legend keyNames copy do: [:x | x delete].
	self legend keyNames removeAll.
	self legend keyColors copy do: [:x | x delete].
	self legend keyColors removeAll