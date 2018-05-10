as yet unclassified
mode: aDimension
	"mode returns array, because multiple modes are possible"
	| occurences result |
	occurences := Dictionary new.
	occurences := self countingSort: aDimension.
	result := (occurences select: [:each | each = (occurences values max)]) keys.
	result size = self size
		ifTrue: [^ #noMode].
	^ result.