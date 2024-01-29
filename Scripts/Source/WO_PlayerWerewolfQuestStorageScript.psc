Scriptname WO_PlayerWerewolfQuestStorageScript extends Quest  


; ==============================================================================================
; ####### PROPERTIES

Shout Property LastHowl Auto
Spell Property LastBeastPower Auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

Event OnInit()
	Debug.Notification("Quest init event...")

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
	if PlayerRef.GetItemCount(WO_FrostmoonRingHunt) == 0
		PlayerRef.AddItem(WO_FrostmoonRingHunt)
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

Actor Property PlayerRef Auto

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
Armor property WO_FrostmoonRingHunt Auto

;------------------------------------------------------------
; 'Werewolf Overhaul' mod - jewerly
;------------------------------------------------------------
Armor Property WO_NecklaceTerribleRoar Auto
Armor Property WO_NecklaceVictoryCry Auto
Armor Property WO_NecklaceCallOfThePack Auto
Armor Property WO_NecklaceSovereignsVoice Auto
Armor Property WO_NecklaceUnrelentingRoar Auto
Armor Property WO_NecklaceCursedFlame Auto