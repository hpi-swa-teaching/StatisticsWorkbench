event-handling
openFileChooser

	|fc|
	fc := FileChooser new.
	fc initializeAsDialogBox.
	self stream: fc open;
		fileChosen: true.