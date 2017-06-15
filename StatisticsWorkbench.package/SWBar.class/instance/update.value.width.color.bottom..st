as yet unclassified
update: pos value: val width: wid color: col bottom: aBot
	self 
		bottom: aBot;
		height: val;
		value: val;
		width: wid;
		color: col.
	self position: (pos x) @ (self bottom - val).	
		self textmorph position: (self position);
		changed.
	