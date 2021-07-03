testing
setUp

	super setUp.
	self data: SWDataStub createSeeded.
	self originalDataSize: self data size
