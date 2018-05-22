as yet unclassified
fromString: aString
	
	self flag: #justForTesting. "just to test the GUI pls write a proper method that takes a String an converts it into Data. String could look like 'Dimensions: 2;  [1,2] [2,3]' catch all errors so the user cant do messy stuff "
	^SWDataTest createSeeded2. 
	