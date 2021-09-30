Class {
	#name : #CCEntity,
	#superclass : #MooseEntity,
	#category : #'Aeon-Example-Model-Entities'
}

{ #category : #meta }
CCEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'Aeon-Example-Model'>
	<generated>
	^self
]

{ #category : #meta }
CCEntity class >> metamodel [

	<generated>
	^ CCModel metamodel
]
