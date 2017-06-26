as yet unclassified
at: aPoint
	| submorphs |
	
	submorphs := self submorphs.
	
	submorphs do: [:submorph | (submorph realPoint = aPoint) ifTrue: [ ^ submorph ]].
	 
	" If there is no point, return nil instead of yourself "
	^ nil