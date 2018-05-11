history
lastStoredRun
	^ ((Dictionary new) add: (#errors->((Set new))); add: (#passed->((Set new) add: #testMaxAcceptsXandY; add: #testAddMany; add: #testEqual; add: #testMax; add: #testMin; add: #testDimension; add: #testRemove; add: #testAdd; yourself)); add: (#failures->((Set new))); add: (#timeStamp->'8 May 2018 11:29:12 am' asTimeStamp); yourself)