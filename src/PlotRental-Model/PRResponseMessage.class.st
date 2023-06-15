Class {
	#name : #PRResponseMessage,
	#superclass : #PRMessage,
	#category : #'PlotRental-Model'
}

{ #category : #testing }
PRResponseMessage >> isAccept [

	^ false
]

{ #category : #testing }
PRResponseMessage >> isReject [

	^ false
]

{ #category : #testing }
PRResponseMessage >> isResponse [

	^ true
]
