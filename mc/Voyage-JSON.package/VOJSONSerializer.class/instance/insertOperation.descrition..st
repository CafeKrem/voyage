serializing
insertOperation: anObject descrition: aDescription
	| operation |
	operation := repository insertOperation
		object: anObject;
		id: repository newId.
	^ self hookInsertOperation: operation description: aDescription