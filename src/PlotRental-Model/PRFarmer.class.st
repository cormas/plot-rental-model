Class {
	#name : #PRFarmer,
	#superclass : #CMAgent,
	#traits : 'TCMLocated + TCMCommunicating',
	#classTraits : 'TCMLocated classTrait + TCMCommunicating classTrait',
	#category : #'PlotRental-Model'
}

{ #category : #procedures }
PRFarmer >> rentPlot: aPlot [

	aPlot rentTo: self
]
