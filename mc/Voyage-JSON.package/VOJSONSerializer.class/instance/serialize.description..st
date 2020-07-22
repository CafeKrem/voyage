serializing
serialize: anObject description: aDescription
	| serialized op |
	op := (repository isNew: anObject)
		ifTrue: [ self insertOperation: anObject descrition: aDescription ]
		ifFalse: [ self updateOperation: anObject description: aDescription ].
	operations add: op.
	serialized := self basicSerialize: anObject description: aDescription.
	op serialized: serialized.
	^ operations