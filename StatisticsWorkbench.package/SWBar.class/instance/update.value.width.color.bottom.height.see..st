as yet unclassified
update: pos value: val width: wid color: col bottom: aBot height: aHeight see: aBool
	self 
		bottom: aBot;
		height: aHeight;
		value: val;
		width: wid;
		color: col.
	self position: (pos x) @ (self bottom - self height).	
	self show_val: aBool.
	self textmorph position: (self position);
		changed.
	