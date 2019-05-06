as yet unclassified
testCaptionMorph
	| axisLine |
	axisLine := SWAxisLine create.
	axisLine caption: 'test'.
	self assert: axisLine captionMorph text = 'test'.
	
	axisLine caption: 'test2'.
	self assert: axisLine captionMorph text = 'test2'.
	
	axisLine textColor: Color red.
	self assert: axisLine captionMorph color = Color red.
	
	axisLine textColor: Color blue.
	self assert: axisLine captionMorph color = Color blue.
	
	axisLine delete.