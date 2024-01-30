;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname QF_WO_ModInitialisationQuest_0571F7AC Extends Quest Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;------------------------------------------------------------
; Aela
;------------------------------------------------------------
AelaShield.ForceRefTo(CompanionsShieldForAela)
AelaTheHuntress.SetOutfit(ArmorCompanionsOutfitNoHelmet)

if AelaTheHuntress.GetItemCount(SkyforgeSteelShieldUnique) < 1
	if AelaTheHuntress.GetItemCount(ArmorSteelShield) > 0
		AelaTheHuntress.RemoveItem(ArmorSteelShield, 1, true)
	endif
	AelaTheHuntress.AddItem(SkyforgeSteelShieldUnique, 1, true)
endif

if AelaTheHuntress.GetItemCount(SkyforgeSteelSword) < 1
	if AelaTheHuntress.GetItemCount(SkyforgeSteelDagger) > 0
		AelaTheHuntress.RemoveItem(SkyforgeSteelDagger, 1, true)
	endif		
	AelaTheHuntress.AddItem(SkyforgeSteelSword, 1, true)
endif

if AelaTheHuntress.GetItemCount(HuntingBow) > 0
	AelaTheHuntress.RemoveItem(HuntingBow, 1, true)
endif

if AelaTheHuntress.GetItemCount(IronArrow) > 0
	AelaTheHuntress.AddItem(SkyforgeSteelArrow, 100, true)
	AelaTheHuntress.RemoveItem(IronArrow, 100, true)
endif

;------------------------------------------------------------
; Vilkas
;------------------------------------------------------------
if Vilkas.GetItemCount(SkyforgeSteelShieldUnique) < 1
	if Vilkas.GetItemCount(ArmorIronBandedShield) > 0
		Vilkas.RemoveItem(ArmorIronBandedShield, 1, true)
	endif
	Vilkas.AddItem(SkyforgeSteelShieldUnique, 1, true)
endif

;------------------------------------------------------------
; Farkas
;------------------------------------------------------------
Farkas.SetOutfit(ArmorCompanionsOutfitNoHelmet)

;------------------------------------------------------------
; Skjor
;------------------------------------------------------------	
if Skjor.GetItemCount(ArmorHideShield) > 0
	Skjor.RemoveItem(ArmorHideShield, 1, true)
endif

;------------------------------------------------------------
; Go to the next stage
;------------------------------------------------------------
WO_ModInitialisationQuest.SetStage(2)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
AelaTheHuntress.AddToFaction(WO_WerewolfHumanFormFaction)
Vilkas.AddToFaction(WO_WerewolfHumanFormFaction)
Farkas.AddToFaction(WO_WerewolfHumanFormFaction)
Skjor.AddToFaction(WO_WerewolfHumanFormFaction)

;------------------------------------------------------------
; Go to the next stage
;------------------------------------------------------------
WO_ModInitialisationQuest.SetStage(3)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;------------------------------------------------------------
; Reload of PlayerSleepQuest to make it working with Hircines Ring
;------------------------------------------------------------
PlayerSleepQuest.Stop()
PlayerSleepQuest.Start()

;------------------------------------------------------------
; We've done with initialisation, stop this quest
;------------------------------------------------------------
WO_ModInitialisationQuest.SetStage(100)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property AelaTheHuntress Auto
Actor Property Vilkas Auto
Actor Property Farkas Auto
Actor Property Skjor Auto

ReferenceAlias Property AelaShield Auto
ObjectReference Property CompanionsShieldForAela Auto

Outfit Property ArmorCompanionsOutfitNoHelmet Auto

Armor Property SkyforgeSteelShieldUnique Auto
Armor Property ArmorSteelShield Auto
Armor Property ArmorIronBandedShield Auto
Armor Property ArmorHideShield Auto

Weapon Property SkyforgeSteelSword Auto
Weapon Property SkyforgeSteelDagger Auto
Weapon Property HuntingBow Auto
Ammo Property IronArrow Auto
Ammo Property SkyforgeSteelArrow Auto


Faction Property WO_WerewolfHumanFormFaction Auto

Quest Property PlayerSleepQuest Auto

Quest Property WO_ModInitialisationQuest  Auto  
