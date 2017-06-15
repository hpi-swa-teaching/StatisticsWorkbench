as yet unclassified
update
	| pos wheelColors |
	pos:=1.
	wheelColors := Color wheel: self dataset size.
	self pieslices do: [:slice | slice delete].
	self dataset keysAndValuesDo:  [:aKey :aValue | self createPieSliceFrom: aKey with: aValue 										at: pos colored: (wheelColors at: pos). pos := pos + 1].