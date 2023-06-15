Class {
	#name : #PRMessageTest,
	#superclass : #TestCase,
	#instVars : [
		'plot',
		'amount',
		'rentalOffer',
		'rentalRequest',
		'acceptResponse',
		'rejectResponse'
	],
	#category : #'PlotRental-Model-Tests'
}

{ #category : #initialization }
PRMessageTest >> setUp [

	super setUp.
	
	plot := PRPlot new.
	amount := 42.
	
	rentalOffer := PRRentalOfferMessage forPlot: plot.
	
	rentalRequest := PRRentalRequestMessage
		forPlot: plot
		proposedAmount: amount.
		
	acceptResponse := PRAcceptMessage new.
	rejectResponse := PRRejectMessage new.
]

{ #category : #tests }
PRMessageTest >> testIsAccept [

	self assert: acceptResponse isAccept.
	self deny: rejectResponse isAccept.
]

{ #category : #tests }
PRMessageTest >> testIsReject [

	self deny: acceptResponse isReject.
	self assert: rejectResponse isReject.
]

{ #category : #tests }
PRMessageTest >> testIsRentalOffer [

	self assert: rentalOffer isRentalOffer.
	self deny: rentalRequest isRentalOffer.
	self deny: acceptResponse isRentalOffer.
	self deny: rejectResponse isRentalOffer.
]

{ #category : #tests }
PRMessageTest >> testIsRentalRequest [

	self deny: rentalOffer isRentalRequest.
	self assert: rentalRequest isRentalRequest.
	self deny: acceptResponse isRentalRequest.
	self deny: rejectResponse isRentalRequest.
]

{ #category : #tests }
PRMessageTest >> testIsResponse [

	self deny: rentalOffer isResponse.
	self deny: rentalRequest isResponse.
	self assert: acceptResponse isResponse.
	self assert: rejectResponse isResponse.
]

{ #category : #tests }
PRMessageTest >> testOfferedPlot [

	self assert: rentalOffer plot equals: plot
]

{ #category : #tests }
PRMessageTest >> testProposedAmount [

	self assert: rentalRequest proposedAmount equals: amount
]

{ #category : #tests }
PRMessageTest >> testRequestedPlot [

	self assert: rentalRequest plot equals: plot
]
