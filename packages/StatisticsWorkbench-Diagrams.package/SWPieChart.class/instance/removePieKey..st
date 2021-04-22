adding/removing
removePieKey: aPieKey

	aPieKey pieKeyNames copy do: [:x | x delete].
	aPieKey pieKeyColors copy do: [:x | x delete]
