Class {
	#name : #CCCreator,
	#superclass : #CCEntity,
	#instVars : [
		'#name => FMProperty',
		'#coasters => FMMany type: #CCCoaster opposite: #creator'
	],
	#category : #'Aeon-Example-Model-Entities'
}

{ #category : #meta }
CCCreator class >> annotation [

	<FMClass: #Creator super: #CCEntity>
	<package: #'Aeon-Example-Model'>
	<generated>
	^self
]

{ #category : #adding }
CCCreator >> addCoaster: anObject [
	<generated>
	^ self coasters add: anObject
]

{ #category : #accessing }
CCCreator >> coasters [
	"Relation named: #coasters type: #CCCoaster opposite: #creator"

	<generated>
	<derived>
	^ coasters
]

{ #category : #accessing }
CCCreator >> coasters: anObject [

	<generated>
	coasters value: anObject
]

{ #category : #accessing }
CCCreator >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
CCCreator >> name: anObject [
	<generated>
	name := anObject
]
