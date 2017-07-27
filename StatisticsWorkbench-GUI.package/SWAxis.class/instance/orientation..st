accessing
orientation: anObject
	" Possible values: #horizontal, #vertical "
	
	orientation := anObject.
	self length: self length;
		update;
		flag: #tom "double update in length: "