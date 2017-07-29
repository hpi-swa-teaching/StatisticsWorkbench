updating
updatePieKey

	self pieKey submorphs do: [:x | x delete].
	self pieKey pieslices: self pieslices.
	self pieKey drawKey.