testing
testCSVImportWithEmptyFileStream 

	|emptyStream actualData expectedData|

	emptyStream := ReadStream on: '' from: 1 to: '' size.

	expectedData := SWDataUnlabeled create.
	
	actualData := SWDataUnlabeled fromCSVStream: emptyStream.
		
	self assert: expectedData equals: actualData.
