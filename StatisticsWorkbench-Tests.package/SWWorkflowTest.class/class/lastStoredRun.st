history
lastStoredRun
	^ ((Dictionary new) add: (#errors->((Set new))); add: (#passed->((Set new) add: #testAddAfter; add: #testRemove; add: #testSize; add: #testAdd; add: #testAt; add: #testAddBefore; yourself)); add: (#failures->((Set new))); add: (#timeStamp->'8 May 2018 11:29:12 am' asTimeStamp); yourself)