as yet unclassified
updatePieKey

	self pieKey submorphs do: [:x | x delete].
	self pieKey pieSlices: self pieslices.
	self pieKey drawKey.