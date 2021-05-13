accessing
setzeRow: rowNumber auf: Boolean
"
	self list at: rowNumber :=  Boolean. 		Hier änder ich die Datenstruktur
	self changed: #selectedDiagrams. 			Hier informiere ich das View, dass die Datenstruktur verändert wurde."