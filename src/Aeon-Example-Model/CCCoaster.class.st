Class {
	#name : #CCCoaster,
	#superclass : #CCEntity,
	#instVars : [
		'#image => FMProperty',
		'#owned => FMProperty',
		'#shape => FMOne type: #CCShape opposite: #coasters',
		'#country => FMOne type: #CCCountry opposite: #coasters',
		'#creator => FMOne type: #CCCreator opposite: #coasters'
	],
	#category : #'Aeon-Example-Model-Entities'
}

{ #category : #meta }
CCCoaster class >> annotation [

	<FMClass: #Coaster super: #CCEntity>
	<package: #'Aeon-Example-Model'>
	<generated>
	^self
]

{ #category : #accessing }
CCCoaster >> country [
	"Relation named: #country type: #CCCountry opposite: #coasters"

	<generated>
	^ country
]

{ #category : #accessing }
CCCoaster >> country: anObject [

	<generated>
	country := anObject
]

{ #category : #accessing }
CCCoaster >> creator [
	"Relation named: #creator type: #CCCreator opposite: #coasters"

	<generated>
	^ creator
]

{ #category : #accessing }
CCCoaster >> creator: anObject [

	<generated>
	creator := anObject
]

{ #category : #accessing }
CCCoaster >> image [

	<FMProperty: #image type: #String>
	<generated>
	^ image
]

{ #category : #accessing }
CCCoaster >> image: anObject [
	<generated>
	image := anObject
]

{ #category : #accessing }
CCCoaster >> owned [

	<FMProperty: #owned type: #Boolean>
	<generated>
	^ owned
]

{ #category : #accessing }
CCCoaster >> owned: anObject [
	<generated>
	owned := anObject
]

{ #category : #accessing }
CCCoaster >> shape [
	"Relation named: #shape type: #CCShape opposite: #coasters"

	<generated>
	^ shape
]

{ #category : #accessing }
CCCoaster >> shape: anObject [

	<generated>
	shape := anObject
]
