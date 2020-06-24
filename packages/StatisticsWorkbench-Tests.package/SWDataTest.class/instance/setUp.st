testing
setUp

	super setUp.
	self data: self class createSeeded.
	self originalDataSize: self data size
