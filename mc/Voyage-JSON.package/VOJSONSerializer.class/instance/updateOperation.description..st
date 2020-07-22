serializing
updateOperation: anObject description: aDescription
	| operation |
	operation := repository updateOperation
		object: anObject;
		id: (repository keyOf: anObject).
	^ self hookUpdateOperation: operation description: aDescription.
	