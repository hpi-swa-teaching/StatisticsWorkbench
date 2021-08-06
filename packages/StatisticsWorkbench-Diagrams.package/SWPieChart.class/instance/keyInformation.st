accessing
keyInformation

	^ self pieSlices collect: [:slice| (slice vector labelName -> slice slice color)]