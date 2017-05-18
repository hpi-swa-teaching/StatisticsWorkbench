as yet unclassified
updateDiagram
	|temp|
	temp:=0.
	self submorphs do: [:morph| morph delete].
	self valueCollection do: [:value| self createBar: value width: self barWidth position: temp.
									temp:=temp+1.].