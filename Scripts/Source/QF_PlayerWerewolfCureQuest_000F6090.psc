;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname QF_PlayerWerewolfCureQuest_000F6090 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Sconce
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Sconce Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY WolfSpirit
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_WolfSpirit Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
; Curing the player of lycanthropy.
;------------------------------------------------------------

;------------------------------------------------------------
; turn you back if you're currently a werewolf
;------------------------------------------------------------
if (PlayerWerewolfQuest.IsRunning() && PlayerWerewolfQuest.GetStage() < 100)
    PlayerWerewolfQuest.SetStage(100)
endif

;------------------------------------------------------------
; take away spell and immunity
;------------------------------------------------------------
Game.GetPlayer().RemoveSpell(WerewolfChange)
Game.GetPlayer().RemoveSpell(WerewolfImmunity)
Game.GetPlayer().RemoveSpell(WO_abWerewolfSleep)
Game.GetPlayer().RemoveSpell(WO_abWerewolfSilver)
Game.GetPlayer().RemoveSpell(WO_abWerewolfPoison)

;------------------------------------------------------------
; you can't get into the Underforge anymore, either
;------------------------------------------------------------
(C00 as CompanionsHousekeepingScript).TempUnderforgeAccess = false
(C00 as CompanionsHousekeepingScript).PlayerHasBeastBlood = false

;------------------------------------------------------------
; restart quest to to be cured again in the future, if you wish
;------------------------------------------------------------
Stop()
Start()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property C00  Auto
Quest Property PlayerWerewolfQuest  Auto

Spell Property WerewolfChange  Auto
Spell Property WerewolfImmunity  Auto
Spell Property WO_abWerewolfSleep  Auto
Spell Property WO_abWerewolfSilver  Auto
Spell Property WO_abWerewolfPoison  Auto
