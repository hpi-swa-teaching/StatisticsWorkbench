as yet unclassified
update: pos value: val width: wid color: col
	self position: pos;
		height: val;
		width: wid;
		color: col.
	self textmorph position: (self position);
		changed.