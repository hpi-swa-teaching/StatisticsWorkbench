tests
testToJSON
	|csv parser actualJSON expectedJSON|
	csv := String streamContents: [:aStream|
			aStream 
				nextPutAll: 'firsname, lastname, description'; cr;
				nextPutAll: 'Luke,Skywalker,"Young Jedi"'; cr;
				nextPutAll: 'Obiwan, Kenobi,"Jedi Master"'.
	].

	expectedJSON := '[{fname: "Luke", lname: "Skywalker", activity: "Young Jedi"},
						{fname: "Obiwan", lname: "Kenobi", activity: "Jedi Master"}]'.

	parser := CSVParser  onString: csv.
	actualJSON := parser asJSONWithHeader: #(fname lname activity).
	self 
		assert:	(self removeBlanks: expectedJSON) 
		equals:  (self removeBlanks: actualJSON)
		