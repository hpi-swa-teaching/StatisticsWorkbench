as yet unclassified
drawSpiderNet
	
	1 to: 5 do: [:each | self drawCircularLineForValue: each * 20].
	
	1 to: self dimensions do: [:dimension | self addAxisForDimension: dimension].