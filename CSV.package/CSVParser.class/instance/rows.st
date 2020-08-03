accessing
rows
	^ Array streamContents: [:s | self rowsDo: [:ea | s nextPut: ea]]