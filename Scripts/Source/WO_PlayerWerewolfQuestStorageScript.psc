Scriptname WO_PlayerWerewolfQuestStorageScript extends Quest  


; ==============================================================================================
; ####### PROPERTIES

Shout Property LastHowl Auto
Spell Property LastBeastPower Auto

;------------------------------------------------------------
; Mod setup at first load
;------------------------------------------------------------
Actor Property PlayerRef Auto

Actor Property AelaTheHuntress Auto
Actor Property Vilkas Auto
Actor Property Farkas Auto
Actor Property Skjor Auto

ReferenceAlias Property AelaShield Auto
ObjectReference Property CompanionsShieldForAela Auto

Outfit Property ArmorCompanionsOutfitNoHelmet Auto

Armor Property WO_ArmorCompanionsShieldHeavy Auto
Armor Property ArmorSteelShield Auto
Armor Property ArmorIronBandedShield Auto
Armor Property ArmorHideShield Auto

Weapon Property SkyforgeSteelSword Auto
Weapon Property SkyforgeSteelDagger Auto

Quest Property PlayerSleepQuest Auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

Event OnInit()
	Debug.Notification("Quest init event...")

	;------------------------------------------------------------
	; Aela
	;------------------------------------------------------------
	AelaShield.ForceRefTo(CompanionsShieldForAela)
	AelaTheHuntress.SetOutfit(ArmorCompanionsOutfitNoHelmet)

	if AelaTheHuntress.GetItemCount(WO_ArmorCompanionsShieldHeavy) < 1
		if AelaTheHuntress.GetItemCount(ArmorSteelShield) > 0
			AelaTheHuntress.RemoveItem(ArmorSteelShield)
		endif
		AelaTheHuntress.AddItem(WO_ArmorCompanionsShieldHeavy)
	endif
	
	if AelaTheHuntress.GetItemCount(SkyforgeSteelSword) < 1
		if AelaTheHuntress.GetItemCount(SkyforgeSteelDagger) > 0
			AelaTheHuntress.RemoveItem(SkyforgeSteelDagger)
		endif		
		AelaTheHuntress.AddItem(SkyforgeSteelSword)
	endif

	;------------------------------------------------------------
	; Vilkas
	;------------------------------------------------------------
	if Vilkas.GetItemCount(WO_ArmorCompanionsShieldHeavy) < 1
		if Vilkas.GetItemCount(ArmorIronBandedShield) > 0
			Vilkas.RemoveItem(ArmorIronBandedShield)
		endif
		Vilkas.AddItem(WO_ArmorCompanionsShieldHeavy)
	endif

	;------------------------------------------------------------
	; Farkas
	;------------------------------------------------------------
	Farkas.SetOutfit(ArmorCompanionsOutfitNoHelmet)

	;------------------------------------------------------------
	; Skjor
	;------------------------------------------------------------	
	if Skjor.GetItemCount(WO_ArmorCompanionsShieldHeavy) < 1
		if Skjor.GetItemCount(ArmorHideShield) > 0
			Skjor.RemoveItem(ArmorHideShield)
		endif
		Skjor.AddItem(WO_ArmorCompanionsShieldHeavy)
	endif

	;------------------------------------------------------------
	; Reload of PlayerSleepQuest to make it working with Hircines Ring
	;------------------------------------------------------------
	PlayerSleepQuest.Stop()
	PlayerSleepQuest.Start()



	;------------------------------------------------------------
	; testing stuff
	;------------------------------------------------------------
	if DLC1WerewolfPerkPoints.Value == 0
		DLC1WerewolfPerkPoints.Value = 100
	endif

	if PlayerRef.GetItemCount(DA05HircinesRing) == 0
		PlayerRef.AddItem(DA05HircinesRing)
	endif

	if PlayerRef.GetItemCount(DLC2dunFrostmoonRingBloodlust) == 0
		PlayerRef.AddItem(DLC2dunFrostmoonRingBloodlust)
	endif
	if PlayerRef.GetItemCount(DLC2dunFrostmoonRingMoon) == 0
		PlayerRef.AddItem(DLC2dunFrostmoonRingMoon)
	endif
	if PlayerRef.GetItemCount(DLC2dunFrostmoonRingInstinct) == 0
		PlayerRef.AddItem(DLC2dunFrostmoonRingInstinct)
	endif
	if PlayerRef.GetItemCount(DLC2dunFrostmoonRingHunt) == 0
		PlayerRef.AddItem(DLC2dunFrostmoonRingHunt)
	endif

	; if PlayerRef.GetItemCount(WO_NecklaceTerribleRoar) == 0
	; 	PlayerRef.AddItem(WO_NecklaceTerribleRoar)
	; endif
	; if PlayerRef.GetItemCount(WO_NecklaceVictoryCry) == 0
	; 	PlayerRef.AddItem(WO_NecklaceVictoryCry)
	; ; endif
	; if PlayerRef.GetItemCount(WO_NecklaceCallOfThePack) == 0
	; 	PlayerRef.AddItem(WO_NecklaceCallOfThePack)
	; endif
	; if PlayerRef.GetItemCount(WO_NecklaceSovereignsVoice) == 0
	; 	PlayerRef.AddItem(WO_NecklaceSovereignsVoice)
	; endif
	; if PlayerRef.GetItemCount(WO_NecklaceUnrelentingRoar) == 0
	; 	PlayerRef.AddItem(WO_NecklaceUnrelentingRoar)
	; endif
	; if PlayerRef.GetItemCount(WO_NecklaceCursedFlame) == 0
	; 	PlayerRef.AddItem(WO_NecklaceCursedFlame)
	; endif
	; if PlayerRef.GetItemCount(WO_NecklaceVictoryCry) == 0
	; 	PlayerRef.AddItem(WO_NecklaceVictoryCry)
	; endif
	; if PlayerRef.GetItemCount(WO_NecklaceVictoryCry) == 0
	; 	PlayerRef.AddItem(WO_NecklaceVictoryCry)
	; endif
	; endif

EndEvent

; ####### EVENTS END
; ==============================================================================================

GlobalVariable Property DLC1WerewolfPerkPoints Auto

;------------------------------------------------------------
; Original jewerly
;------------------------------------------------------------
Armor Property DA05HircinesRing Auto

;------------------------------------------------------------
; 'Dragonborn' DLC - Frostmoon jewerly
;------------------------------------------------------------
Armor property DLC2dunFrostmoonRingBloodlust Auto
Armor property DLC2dunFrostmoonRingMoon Auto
Armor property DLC2dunFrostmoonRingInstinct Auto
Armor property DLC2dunFrostmoonRingHunt Auto

;------------------------------------------------------------
; 'Werewolf Overhaul' mod - jewerly
;------------------------------------------------------------
Armor Property WO_NecklaceTerribleRoar Auto
Armor Property WO_NecklaceVictoryCry Auto
Armor Property WO_NecklaceCallOfThePack Auto
Armor Property WO_NecklaceSovereignsVoice Auto
Armor Property WO_NecklaceUnrelentingRoar Auto
Armor Property WO_NecklaceCursedFlame Auto