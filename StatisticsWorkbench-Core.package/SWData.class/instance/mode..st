math functions
mode: aDimension
	"mode returns array, because multiple modes are possible"
	| occurrences result |
	
	occurrences := Dictionary new.
	occurrences := self countingSort: aDimension.
	result := (occurrences select: [:each | each = occurrences values maximum]) keys.
	(result size = self size)
		ifTrue: [^ #noMode].
	^ result