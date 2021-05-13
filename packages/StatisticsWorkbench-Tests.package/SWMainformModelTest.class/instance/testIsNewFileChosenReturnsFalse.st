as yet unclassified
testIsNewFileChosenReturnsFalse

	|mainformModel fileStream|
	
	mainformModel := SWMainformModelTest createSWMainformModel.

	fileStream := self createFileStreamNamed: 'File1.txt'.
	mainformModel stream: fileStream.
	
	mainformModel parseData.

	self assert:( mainformModel isNewFileChosen not).	