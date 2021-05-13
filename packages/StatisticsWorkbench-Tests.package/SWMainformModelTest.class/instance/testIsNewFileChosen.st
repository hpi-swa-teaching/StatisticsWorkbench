as yet unclassified
testIsNewFileChosen

	|mainformModel fileStream|
	
	mainformModel := SWMainformModelTest createSWMainformModel.

	fileStream := self createFileStreamNamed: 'File1.txt'.
	mainformModel stream: fileStream.
	
	mainformModel parseData.
	
	fileStream := self createFileStreamNamed: 'File2.txt'.
	mainformModel stream: fileStream.
	
	self assert: mainformModel isNewFileChosen.	


	