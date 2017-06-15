as yet unclassified
update
	| submorphs |
	submorphs := self submorphs.
	submorphs
		do: [:dataPoint | self removeDataPoint: dataPoint]
	
	
	
	