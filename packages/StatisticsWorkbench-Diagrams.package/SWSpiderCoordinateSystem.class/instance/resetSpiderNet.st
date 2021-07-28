adding/removing
resetSpiderNet

	self spiderNet submorphs do: [:each | each delete].
	self spiderNet removeAllMorphs