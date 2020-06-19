adding/removing
removePieKey

	self pieKey pieKeyNames copy do: [:x | x delete].
	self pieKey pieKeyNames removeAll.
	self pieKey pieKeyColors copy do: [:x | x delete].
	self pieKey pieKeyColors removeAll
