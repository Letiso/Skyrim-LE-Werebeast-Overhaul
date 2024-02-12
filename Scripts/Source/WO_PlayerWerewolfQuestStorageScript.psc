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

	if PlayerRef.GetItemCount(WO_NecklaceOfFear) == 0
		PlayerRef.AddItem(WO_NecklaceOfFear)
	endif
	if PlayerRef.GetItemCount(WO_NecklaceOfVictory) == 0
		PlayerRef.AddItem(WO_NecklaceOfVictory)
	endif
	if PlayerRef.GetItemCount(WO_NecklaceOfPack) == 0
		PlayerRef.AddItem(WO_NecklaceOfPack)
	endif
	if PlayerRef.GetItemCount(WO_NecklaceOfSovereign) == 0
		PlayerRef.AddItem(WO_NecklaceOfSovereign)
	endif
	if PlayerRef.GetItemCount(WO_NecklaceOfRoar) == 0
		PlayerRef.AddItem(WO_NecklaceOfRoar)
	endif
	if PlayerRef.GetItemCount(WO_NecklaceOfFlame) == 0
		PlayerRef.AddItem(WO_NecklaceOfFlame)
	endif
	if PlayerRef.GetItemCount(WO_NecklaceOfFury) == 0
		PlayerRef.AddItem(WO_NecklaceOfFury)
	endif
	if PlayerRef.GetItemCount(WO_NecklaceOfShadows) == 0
		PlayerRef.AddItem(WO_NecklaceOfShadows)
	endif

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
Armor Property WO_NecklaceOfFear Auto
Armor Property WO_NecklaceOfVictory Auto
Armor Property WO_NecklaceOfPack Auto
Armor Property WO_NecklaceOfSovereign Auto
Armor Property WO_NecklaceOfRoar Auto
Armor Property WO_NecklaceOfFlame Auto
Armor Property WO_NecklaceOfFury Auto
Armor Property WO_NecklaceOfShadows Auto