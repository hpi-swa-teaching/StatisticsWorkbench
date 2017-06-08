as yet unclassified
updatePieKey

	self pieKey submorphs do: [:x | x delete].
	self pieKey pieSlices isEmpty ifFalse: self pieKey drawKey.