;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 9
Scriptname QF_PlayerWerewolfQuest_0002BA16 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Beast_Power__Accelerated_Metabolism
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Beast_Power__Accelerated_Metabolism Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Howl__Cursed_Flame
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Howl__Cursed_Flame Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Howl__Furious_Howl
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Howl__Furious_Howl Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Beast_Power__Supernatural_Reflexes
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Beast_Power__Supernatural_Reflexes Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Howl__Unrelenting_Roar
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Howl__Unrelenting_Roar Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Howl__Call_Of_The_Pack
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Howl__Call_Of_The_Pack Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Howl__Terrible_Roar
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Howl__Terrible_Roar Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN AUTOCAST TYPE PlayerWerewolfChangeScript
Quest __temp = self as Quest
PlayerWerewolfChangeScript kmyQuest = __temp as PlayerWerewolfChangeScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.PrepShift()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN AUTOCAST TYPE PlayerWerewolfChangeScript
Quest __temp = self as Quest
PlayerWerewolfChangeScript kmyQuest = __temp as PlayerWerewolfChangeScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.ShiftBack()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
; usual werewolf gameplay
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN AUTOCAST TYPE PlayerWerewolfChangeScript
Quest __temp = self as Quest
PlayerWerewolfChangeScript kmyQuest = __temp as PlayerWerewolfChangeScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.InitialShift()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;WARNING: Unable to load fragment source from function Fragment_2 in script QF_PlayerWerewolfQuest_0002BA16
;Source NOT loaded
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
