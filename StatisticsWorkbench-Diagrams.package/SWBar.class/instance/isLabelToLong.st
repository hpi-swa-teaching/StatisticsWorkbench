accessing
isLabelToLong
	"textWidth = 40 needs to be checked extra since every textLabel's width is at least 40"
	| charWidth textWidth |
	
	charWidth := 10.
	textWidth := self barLabelMorph width.
	(textWidth = 40) ifTrue: [textWidth := self barLabelMorph text size * charWidth].
	^ textWidth > self width