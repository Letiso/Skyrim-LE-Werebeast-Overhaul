Scriptname C03RampageQuest extends Quest  


; ==============================================================================================
; ####### PROPERTIES

Actor Property PlayerRef Auto

;----------------- Transformation part
;------------------------------------------------------------
; Beast races
;------------------------------------------------------------
Race Property WerewolfBeastRace Auto
Race Property DLC1VampireBeastRace Auto

;------------------------------------------------------------
; SpellsPowers
;------------------------------------------------------------
FormList Property WO_SpellsPowers Auto
FormList Property WerewolfDispelList Auto
FormList Property DLC1VampireSpellsPowers Auto

;------------------------------------------------------------
; Imods
;------------------------------------------------------------
float Property FadeSeconds auto
ImageSpaceModifier Property WerewolfChange auto
ImageSpaceModifier Property FadeToBlack auto
ImageSpaceModifier Property HoldBlack auto
ImageSpaceModifier Property FadeFromBlack auto

;------------------------------------------------------------
; Sound
;------------------------------------------------------------
MusicType Property CombatMusic Auto

;------------------------------------------------------------
; Factions
;------------------------------------------------------------
Faction Property PlayerWerewolfFaction auto
Faction Property WerewolfFaction auto
FormList Property CrimeFactions Auto

;------------------------------------------------------------
; 'Werewolf Overhaul' mod - jewerly
;------------------------------------------------------------
Armor Property DA05HircinesRing Auto
Armor Property WO_WerewolfNecklacePack Auto

GlobalVariable Property WO_HircinesRingPower Auto

;------------------------------------------------------------
; 'Dragonborn' DLC - Frostmoon jewerly
;------------------------------------------------------------
Armor property DLC2dunFrostmoonRingBloodlust Auto
Armor property DLC2dunFrostmoonRingMoon Auto
Armor property DLC2dunFrostmoonRingInstinct Auto
Armor property DLC2dunFrostmoonRingHunt Auto

;------------------------------------------------------------
; Skin & weapon
;------------------------------------------------------------
Armor Property ArmorFXWerewolfTransitionSkin Auto
Weapon Property Unarmed Auto

;------------------------------------------------------------
; Abilities
;------------------------------------------------------------

; in vanilla it was a howl, for now it's an ability	
Spell Property WO_WerewolfDetectLife Auto
; in case when we have my other mod 'Detect Life & Night Vision Overhaul' installed, we wanna to use ability from there
Spell Property WerewolfDetectLife Auto	

Spell Property WO_Breakthrough Auto
Spell Property WO_SupernaturalReflexes Auto
Spell Property WO_InnerCompass auto

;------------------------------------------------------------
; Howls
;------------------------------------------------------------
Shout Property HowlWerewolfFear Auto
WordOfPower Property HowlFear1 Auto
WordOfPower Property HowlFear2 Auto
WordOfPower Property HowlFear3 Auto

Shout Property WO_HowlWerewolfUnrelentingRoar Auto
WordOfPower Property WO_HowlUnrelentingRoar Auto

Shout Property WO_HowlWerewolfScentOfBlood Auto
WordOfPower Property WO_HowlScentOfBlood Auto

Shout Property WO_HowlWerewolfIndominatableRage Auto
WordOfPower Property WO_HowlIndominatableRage Auto

Shout Property HowlWerewolfSummonWolves Auto
WordOfPower Property HowlSummonWolves1 Auto
WordOfPower Property HowlSummonWolves2 Auto
WordOfPower Property HowlSummonWolves3 Auto

Shout Property WO_HowlWerewolfPackLeader Auto
WordOfPower Property WO_HowlPackLeader Auto

;------------------------------------------------------------
; Leveled abilities
;------------------------------------------------------------
Spell Property LeveledAbility Auto
Spell Property PlayerWerewolfLvl10AndBelowAbility Auto
Spell Property PlayerWerewolfLvl15AndBelowAbility Auto
Spell Property PlayerWerewolfLvl20AndBelowAbility Auto
Spell Property PlayerWerewolfLvl25AndBelowAbility Auto
Spell Property PlayerWerewolfLvl30AndBelowAbility Auto
Spell Property PlayerWerewolfLvl35AndBelowAbility Auto
Spell Property PlayerWerewolfLvl40AndBelowAbility Auto
Spell Property PlayerWerewolfLvl45AndBelowAbility Auto
Spell Property PlayerWerewolfLvl50AndBelowAbility Auto

Spell Property WO_PlayerWerewolfLvl55AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl60AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl65AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl70AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl75AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl80AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl85AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl90AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl95AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl100AndBelowAbility Auto

Spell Property WO_PlayerWerewolfLvl105AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl110AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl115AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl120AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl125AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl130AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl135AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl140AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl145AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl150AndBelowAbility Auto

Spell Property WO_PlayerWerewolfLvl155AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl160AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl165AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl170AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl175AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl180AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl185AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl190AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl195AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl200AndOverAbility Auto

;------------------------------------------------------------
; Werewolf weaknesses
;------------------------------------------------------------
Spell Property WO_AbWerewolfPoison Auto

;------------------------------------------------------------
; Feeding
; Called from PlayerWerewolfChangeScript by feeding perks
;------------------------------------------------------------
Quest Property PlayerWerewolfQuest Auto

;------------------------------------------------------------
; Dawnguard DLC - perks
;------------------------------------------------------------
Perk Property DLC1GorgingPerk Auto

;------------------------------------------------------------
; Werewolf Overhaul mod - perks
;------------------------------------------------------------
; active abilities
Perk Property WO_DetectAllCreatures1 Auto
Perk Property WO_Breakthrough1 Auto
Perk Property WO_SupernaturalReflexesPerk Auto
Perk Property WO_InnerCompassPerk Auto

Perk Property WO_TerribleRoar1 Auto
Perk Property WO_UnrelentingRoar1 Auto
Perk Property WO_ScentOfBlood1 Auto
Perk Property WO_IndomitableRage1 Auto
Perk Property WO_AidOfBrothers1 Auto
Perk Property WO_PackLeadersHowl1 Auto

; passive abilities
Perk Property WO_Adrenaline Auto
Spell Property WO_PerkAdrenaline Auto

Perk Property WO_Maniac Auto
Spell Property WO_PerkManiac Auto

Perk Property WO_AnimalVigorPerk1 Auto
Perk Property WO_AnimalVigorPerk2 Auto

Perk Property WO_Moonlight1 Auto
Perk Property WO_Moonlight2 Auto
Spell Property WO_PerkMoonlightBeastForm1 Auto
Spell Property WO_PerkMoonlightBeastForm2 Auto
Spell Property WO_PerkMoonlightHumanForm1 Auto
Spell Property WO_PerkMoonlightHumanForm2 Auto

;------------------------------------------------------------
; Timers
;------------------------------------------------------------
float Property RampageMinutesGameTime auto

;------------------------------------------------------------
; To add extra health & stamina from perks & race bonus
;------------------------------------------------------------
Int Property MaxHealthStaminaBonus = 100 Auto

;-------------------- Quest part
;------------------------------------------------------------
; Aela handling
;------------------------------------------------------------
ReferenceAlias Property Aela auto ; on C03
ObjectReference Property AelaLycanStash auto
Race Property NordRace auto
Outfit Property AelaOutfit auto

;------------------------------------------------------------
; Other companions handling, so we can send them inside when needed
;------------------------------------------------------------
ReferenceAlias Property Kodlak auto
ReferenceAlias Property Farkas auto
ReferenceAlias Property Vilkas auto
ReferenceAlias Property Athis auto
ReferenceAlias Property Njada auto
ReferenceAlias Property Ria auto
ReferenceAlias Property Torvar auto

;------------------------------------------------------------
; Apply a cure before becoming a werewolf
;------------------------------------------------------------
Keyword Property VampireKeyword auto
Quest Property PlayerVampireQuest Auto
Spell Property WerewolfCureDisease auto

;------------------------------------------------------------
; Become a werewolf
;------------------------------------------------------------
Spell Property Immunity Auto
Quest Property PlayerWerewolfCureQuest auto
Spell Property BeastForm Auto

ObjectReference Property RampageStartMarker auto
Idle Property BleedOutIdle auto
Scene Property PostRampageScene auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA

race __originalRace = None
bool __shiftingBack = False

;------------------------------------------------------------
; To make available quick menu & spellsPowers form list
;------------------------------------------------------------
DefaultObjectManager ObjectManager

;------------------------------------------------------------
; Fix for the dual weapon bug after the shift back
;------------------------------------------------------------
Form __leftHandWeapon
Form __rightHandWeapon

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnInit()
	ObjectManager = Game.GetFormFromFile(0x00000031, "Skyrim.esm") as DefaultObjectManager

EndEvent


;------------------------------------------------------------
; Shift back when it's time
;------------------------------------------------------------
Event OnUpdateGameTime()
	ShiftBack()

EndEvent

; ####### EVENTS END
; ==============================================================================================


; ==============================================================================================
; ####### FUNCTIONS

;------------------------------------------------------------
; Based on the code from PlayerWerewolfChangeScript
;------------------------------------------------------------
Function StartRampage()
	PrepShift()
	InitialShift()
	
	;------------------------------------------------------------
	; put Aela back to normal
	;------------------------------------------------------------
	Aela.GetActorReference().SetRace(NordRace)
	AelaLycanStash.RemoveAllItems(Aela.GetActorReference())
	Aela.GetActorReference().SetOutfit(AelaOutfit)

	;------------------------------------------------------------
	; throw everyone else inside
	;------------------------------------------------------------
	Kodlak.GetReference().MoveToMyEditorLocation()
	Aela.GetReference().MoveToMyEditorLocation()
	Farkas.GetReference().MoveToMyEditorLocation()
	Vilkas.GetReference().MoveToMyEditorLocation()
	Athis.GetReference().MoveToMyEditorLocation()
	Njada.GetReference().MoveToMyEditorLocation()
	Ria.GetReference().MoveToMyEditorLocation()
	Torvar.GetReference().MoveToMyEditorLocation()

	;------------------------------------------------------------
	; throw you outside
	;------------------------------------------------------------
	PlayerRef.MoveTo(RampageStartMarker)

	;------------------------------------------------------------
	; give you the spell
	;------------------------------------------------------------
	PlayerRef.AddSpell(BeastForm)
	; screen effect & music
	HoldBlack.PopTo(FadeFromBlack)
	HoldBlack.Remove()
	
	CombatMusic.Add()
	
	Utility.Wait(3)
	FadeFromBlack.Remove()
	
EndFunction


;------------------------------------------------------------
Function HandlePlayerLoadGame()
	ObjectManager.SetForm("RIVR", WerewolfBeastRace)
	ObjectManager.SetForm("RIVS", WO_SpellsPowers)

EndFunction


;------------------------------------------------------------
Function PrepShift()
	;------------------------------------------------------------
	; screen effect
	;------------------------------------------------------------
	FadeToBlack.Apply()
	Utility.Wait(FadeSeconds)
	FadeToBlack.PopTo(HoldBlack)
	
	;------------------------------------------------------------
	; setup the UI restrictions
	;------------------------------------------------------------
	Game.SetBeastForm(True)
	Game.EnableFastTravel(False)
	Game.ForceThirdPerson()
	Game.DisablePlayerControls(abMovement = false, abFighting = false, abCamSwitch = true, abMenu = false, abActivate = false, abJournalTabs = false, aiDisablePOVType = 1)
	Game.ShowFirstPersonGeometry(false)

	;------------------------------------------------------------
	; make game to think that a Vampire Lord transform happens, so we can access to the special Quick Menu being a Werewolf
	; it also prevents unequipping of player's stuff after the shift back
	; and letting us to use our own spells & howls FormList, which will be able to use at special Quick Menu
	;------------------------------------------------------------
	ObjectManager.SetForm("RIVR", WerewolfBeastRace)
	ObjectManager.SetForm("RIVS", WO_SpellsPowers)

EndFunction


;------------------------------------------------------------
Function InitialShift()
	HandlePlayerCure()

	;------------------------------------------------------------
	; handle transformation process
	;------------------------------------------------------------
	FixDualWeaponReequipBug()
	HandleWerewolfJewerlyPowers()
	SwitchPlayerRace()
	HandlePlayerItems()
	UnequipMagic()
	HandlePlayerAbilities()
	SetupFactions()
	SetupShiftBackTimeTracking()

	;------------------------------------------------------------
	; increment stats	; for statistics, I suppose
	;------------------------------------------------------------
	Game.IncrementStat("Werewolf Transformations")

EndFunction


;------------------------------------------------------------
; Called by C03RampagePlayerScript or by OnUpdateGameTime event
;------------------------------------------------------------
Function ShiftBack()
	if (__shiftingBack)
		return 	; do nothing
	endif

	__shiftingBack = true
	UnregisterForUpdateGameTime()

	;------------------------------------------------------------
	; screen effect
	;------------------------------------------------------------
	WerewolfChange.Apply()
	FadeToBlack.Apply()
	Utility.Wait(FadeSeconds)
	FadeToBlack.PopTo(HoldBlack)

	;------------------------------------------------------------
	; you're can't be harmed until the transformation doesn't finished
	;------------------------------------------------------------
	PlayerRef.SetGhost()

	;------------------------------------------------------------
	; waiting for synced animation to finish
	;------------------------------------------------------------
	while (PlayerRef.GetAnimationVariableBool("bIsSynced"))
		Utility.Wait(0.1)
	endwhile

	;------------------------------------------------------------
	; handle transformation progress
	;------------------------------------------------------------
	HandleWerewolfJewerlyPowers()
	HandlePlayerAbilities()
	HandlePlayerItems()
	SetupFactions()

	Shutdown()
	
EndFunction

;------------------------------------------------------------
Function Shutdown()
	CombatMusic.Remove()

	;------------------------------------------------------------
	; disable ui restrictions
	;------------------------------------------------------------
	Game.SetBeastForm(False)
	Game.EnableFastTravel(true)
	Game.EnablePlayerControls(abMovement = false, abFighting = false, abCamSwitch = true, abLooking = false, abSneaking = false, abMenu = false, abActivate = false, abJournalTabs = false, aiDisablePOVType = 1)
	Game.ShowFirstPersonGeometry(true)

	;------------------------------------------------------------
	; restore player health
	;------------------------------------------------------------
	PlayerRef.ResetHealthAndLimbs()

	;------------------------------------------------------------
	; begin the next quest part
	;------------------------------------------------------------
	PostRampageScene.Start()

EndFunction


; Called on stage: ???
;------------------------------------------------------------
Function RestorePlayerRace()
	;------------------------------------------------------------
	; handle transformation progress
	;------------------------------------------------------------
	SwitchPlayerRace()
	FixDualWeaponReequipBug()

	;------------------------------------------------------------
	; restore vampire-lord transform behaviour
	;------------------------------------------------------------
	ObjectManager.SetForm("RIVR", DLC1VampireBeastRace)
	ObjectManager.SetForm("RIVS", DLC1VampireSpellsPowers)

	;------------------------------------------------------------
	; it was started just for feeding handle
	;------------------------------------------------------------
	PlayerWerewolfQuest.Stop()
	
EndFunction


;------------------------------------------------------------
Function HandlePlayerCure()
	;------------------------------------------------------------
	; curing vampirism if you're vampire
	;------------------------------------------------------------
	if (PlayerRef.HasKeyword(VampireKeyword))
		(PlayerVampireQuest as PlayerVampireQuestScript).VampireCure(PlayerRef)
	endif

	;------------------------------------------------------------
	; make you immune to disease, remove existing diseases
	;------------------------------------------------------------
	WerewolfCureDisease.Cast(PlayerRef)
	PlayerRef.AddSpell(Immunity, false)

	;------------------------------------------------------------
	; add to you a weakness to poison ability
	;------------------------------------------------------------
	PlayerRef.AddSpell(WO_AbWerewolfPoison, false)

	;------------------------------------------------------------
	; start the cure quest (to be cured than if you want)
	;------------------------------------------------------------
	PlayerWerewolfCureQuest.Start()

EndFunction


;------------------------------------------------------------
Function FixDualWeaponReequipBug()
	if __shiftingBack
		EquipWeaponInLeftHandIfNecessary()
	else
		EquippedWeaponsInBothHandsCheck()
		UnequipWeaponInLeftHandIfNecessary()
	endif

EndFunction


;------------------------------------------------------------
Function HandleWerewolfJewerlyPowers()
	if __shiftingBack
		;------------------------------------------------------------
		; turn off all the werewolf necklace/ring variables when we change back
		;------------------------------------------------------------
		WO_HircinesRingPower.Value = 0
		
	else
		;------------------------------------------------------------
		; turn on all the werewolf necklace/ring variables for any jewerly we have equipped
		;------------------------------------------------------------
		if PlayerRef.isEquipped(DA05HircinesRing)
			WO_HircinesRingPower.Value = 1
		endif
		
	endif

EndFunction


;------------------------------------------------------------
Function SwitchPlayerRace()
	if __shiftingBack
		;------------------------------------------------------------
		; make sure your health is reasonable before turning you back
		;------------------------------------------------------------
		float currentHealth = PlayerRef.GetAV("health")
	
		float needToBeRestoredHealth = (currentHealth - MaxHealthStaminaBonus) * -1
		if needToBeRestoredHealth > 0
			PlayerRef.RestoreAV("health", needToBeRestoredHealth + 1)
		endif
		
		;------------------------------------------------------------
		; back your max health & stamina to normal
		;------------------------------------------------------------
		PlayerRef.ModAV("health", -MaxHealthStaminaBonus)
		PlayerRef.ModAV("stamina", -MaxHealthStaminaBonus)
		
		;------------------------------------------------------------
		; change you back
		;------------------------------------------------------------
		PlayerRef.SetRace(__originalRace)
	else
		;------------------------------------------------------------
		; turn you into a werewolf
		;------------------------------------------------------------
		__originalRace = PlayerRef.GetRace()
		PlayerRef.SetRace(WerewolfBeastRace)

		;------------------------------------------------------------
		; calculate a werewolf max health & stamina bonus (100 by default)
		;------------------------------------------------------------
		if PlayerRef.HasPerk(WO_AnimalVigorPerk2)
			maxHealthStaminaBonus += 200
		elseif PlayerRef.HasPerk(WO_AnimalVigorPerk1)
			maxHealthStaminaBonus += 100
		endif
		
		;------------------------------------------------------------
		; incrise your max health & stamina
		;------------------------------------------------------------
		PlayerRef.ModAV("health", MaxHealthStaminaBonus)
		PlayerRef.ModAV("stamina", MaxHealthStaminaBonus)

		;------------------------------------------------------------
		; start werewolf quest for feeding handling
		;------------------------------------------------------------
		PlayerWerewolfQuest.SetStage(10)

	endif
	
EndFunction


;------------------------------------------------------------
Function HandlePlayerItems()
	if __shiftingBack
		;------------------------------------------------------------
		; remove werewolf unarmed "weapon"
		;------------------------------------------------------------
		PlayerRef.RemoveItem(Unarmed, 1, True)

	else
		;------------------------------------------------------------
		; unequip all the player's stuff (armors, clothes & weapons)
		;------------------------------------------------------------
		PlayerRef.UnequipAll()

		;------------------------------------------------------------
		; equip werewolf unarmed "weapon"	; it's needed for attack werewolf perks to work properly
		;------------------------------------------------------------
		PlayerRef.EquipItem(Unarmed, False, True)
	endif

EndFunction


;------------------------------------------------------------
Function UnequipMagic()
	;------------------------------------------------------------
	; unequip left & right hand spells, abilities & shouts
	;------------------------------------------------------------
	Spell leftHand = PlayerRef.GetEquippedSpell(0)
	Spell rightHand = PlayerRef.GetEquippedSpell(1)
	Spell power = PlayerRef.GetEquippedSpell(2)
	Shout voice = PlayerRef.GetEquippedShout()
	
	if (leftHand != None)
		PlayerRef.UnequipSpell(leftHand, 0)
	endif
	
	if (rightHand != None)
		PlayerRef.UnequipSpell(rightHand, 1)
	endif
	
	if (power != None)
		PlayerRef.UnequipSpell(power, 2)
	elseif (voice != None)
		PlayerRef.UnequipShout(voice)
	endif

EndFunction


;------------------------------------------------------------
Function HandlePlayerAbilities()
	if __shiftingBack
		;------------------------------------------------------------
		; remove werewolf beast powers & howls
		;------------------------------------------------------------
		int counter
		while counter < WO_SpellsPowers.GetSize()
			Form spellPower = WO_SpellsPowers.GetAt(counter)
			int spellPowerType = spellPower.GetType()

			if spellPowerType == 22
				PlayerRef.RemoveSpell(spellPower as spell)

			elseif spellPowerType == 119
				PlayerRef.RemoveShout(spellPower as shout)
			endif

			counter += 1
		endwhile

		;------------------------------------------------------------
		; dispel werewolf spells
		;------------------------------------------------------------
		counter = 0
		while counter < WerewolfDispelList.GetSize()
			spell spellPower = WerewolfDispelList.GetAt(counter) as spell
			PlayerRef.DispelSpell(spellPower)
	
			counter += 1
		endwhile

		;------------------------------------------------------------
		; remove passive abilities
		;------------------------------------------------------------
		PlayerRef.RemoveSpell(LeveledAbility)
		PlayerRef.RemoveSpell(WO_PerkAdrenaline)
		PlayerRef.RemoveSpell(WO_PerkManiac)

	else
		;------------------------------------------------------------
		; and leveled ability
		;------------------------------------------------------------
		EstablishLeveledAbility()
		PlayerRef.AddSpell(LeveledAbility, false)
		
		;------------------------------------------------------------
		; add werewolf beast powers (left perks branch)
		;------------------------------------------------------------
		AddBeastPowerDetectAllCreatures()
		AddBeastPowerBreakthrough()
		AddBeastPowerSupernaturalReflexes()

		;------------------------------------------------------------
		; add werewolf howls (right perks branch)
		;------------------------------------------------------------
		AddHowlTerribleRoar()
		AddHowlUnrelentingRoar()
		AddHowlScentOfBlood()
		AddHowlIndomitableRage()
		; AddHowlBestialHunting()
		AddHowlCallOfTheBrotherhood()
		AddHowlPackLeadersHowl()
		
		;------------------------------------------------------------
		; add passive abilities
		;------------------------------------------------------------
		if PlayerRef.HasPerk(WO_Adrenaline)
			;------------------------------------------------------------
			; controller & visual effect
			;------------------------------------------------------------
				PlayerRef.AddSpell(WO_PerkAdrenaline, false)
			endif

		if PlayerRef.HasPerk(WO_Maniac)
			;------------------------------------------------------------
			; feeding event call back
			;------------------------------------------------------------
			PlayerRef.AddSpell(WO_PerkManiac, false)
		endif
	endif
	
EndFunction


;------------------------------------------------------------
Function AddBeastPowerDetectAllCreatures()
	if PlayerRef.HasPerk(WO_DetectAllCreatures1)
		; WerewolfDetectLife = Game.GetFormFromFile(, "Detect Life & Night Vision Overhaul.esp") as spell

		; if WerewolfDetectLife
		; 	WO_SpellsPowers.AddForm(WerewolfDetectLife)
		; else
			; WerewolfDetectLife = WO_WerewolfDetectLife
		; endif
		PlayerRef.AddSpell(WO_WerewolfDetectLife, false)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddBeastPowerBreakthrough()
	if PlayerRef.HasPerk(WO_Breakthrough1)
		PlayerRef.AddSpell(WO_Breakthrough, false)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddBeastPowerSupernaturalReflexes()
	if PlayerRef.HasPerk(WO_SupernaturalReflexesPerk)
		PlayerRef.AddSpell(WO_SupernaturalReflexes, false)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddHowlTerribleRoar()
	if PlayerRef.HasPerk(WO_TerribleRoar1)
		Game.UnlockWord(HowlFear1)
		Game.UnlockWord(HowlFear2)
		Game.UnlockWord(HowlFear3)
		PlayerRef.AddShout(HowlWerewolfFear)
		PlayerRef.EquipShout(HowlWerewolfFear)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddHowlUnrelentingRoar()
	if PlayerRef.HasPerk(WO_UnrelentingRoar1)
		Game.UnlockWord(WO_HowlUnrelentingRoar)
		PlayerRef.AddShout(WO_HowlWerewolfUnrelentingRoar)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddHowlScentOfBlood()
	if PlayerRef.HasPerk(WO_ScentOfBlood1)
		Game.UnlockWord(WO_HowlScentOfBlood)
		PlayerRef.AddShout(WO_HowlWerewolfScentOfBlood)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddHowlIndomitableRage()
	if PlayerRef.HasPerk(WO_IndomitableRage1)
		Game.UnlockWord(WO_HowlIndominatableRage)
		PlayerRef.AddShout(WO_HowlWerewolfIndominatableRage)
	endif
	
EndFunction


;------------------------------------------------------------
; Function AddHowlBestialHunting()
; EndFunction


;------------------------------------------------------------
Function AddHowlCallOfTheBrotherhood()
	if PlayerRef.HasPerk(WO_AidOfBrothers1)
		Game.UnlockWord(HowlSummonWolves1)
		Game.UnlockWord(HowlSummonWolves2)
		Game.UnlockWord(HowlSummonWolves3)
		PlayerRef.AddShout(HowlWerewolfSummonWolves)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddHowlPackLeadersHowl()
	if PlayerRef.HasPerk(WO_PackLeadersHowl1)
		Game.UnlockWord(WO_HowlPackLeader)
		PlayerRef.AddShout(WO_HowlWerewolfPackLeader)
	endif
	
EndFunction


;------------------------------------------------------------
Function EstablishLeveledAbility()
	int playerLevel = PlayerRef.GetLevel()
	
	if playerLevel <= 50
		if playerLevel <= 10
			LeveledAbility = PlayerWerewolfLvl10AndBelowAbility
		elseif playerLevel <= 15
			LeveledAbility = PlayerWerewolfLvl15AndBelowAbility
		elseif playerLevel <= 20
			LeveledAbility = PlayerWerewolfLvl20AndBelowAbility
		elseif playerLevel <= 25
			LeveledAbility = PlayerWerewolfLvl25AndBelowAbility
		elseif playerLevel <= 30
			LeveledAbility = PlayerWerewolfLvl30AndBelowAbility
		elseif playerLevel <= 35
			LeveledAbility = PlayerWerewolfLvl35AndBelowAbility
		elseif playerLevel <= 40
			LeveledAbility = PlayerWerewolfLvl40AndBelowAbility
		elseif playerLevel <= 45
			LeveledAbility = PlayerWerewolfLvl45AndBelowAbility
		elseif playerLevel <= 50
			LeveledAbility = PlayerWerewolfLvl50AndBelowAbility
		endif
		
	elseif playerLevel <= 100
		if playerLevel <= 55
			LeveledAbility = WO_PlayerWerewolfLvl55AndBelowAbility
		elseif playerLevel <= 60
			LeveledAbility = WO_PlayerWerewolfLvl60AndBelowAbility
		elseif playerLevel <= 65
			LeveledAbility = WO_PlayerWerewolfLvl65AndBelowAbility
		elseif playerLevel <= 70
			LeveledAbility = WO_PlayerWerewolfLvl70AndBelowAbility
		elseif playerLevel <= 75
			LeveledAbility = WO_PlayerWerewolfLvl75AndBelowAbility
		elseif playerLevel <= 80
			LeveledAbility = WO_PlayerWerewolfLvl80AndBelowAbility
		elseif playerLevel <= 85
			LeveledAbility = WO_PlayerWerewolfLvl85AndBelowAbility
		elseif playerLevel <= 90
			LeveledAbility = WO_PlayerWerewolfLvl90AndBelowAbility
		elseif playerLevel <= 95
			LeveledAbility = WO_PlayerWerewolfLvl95AndBelowAbility
		elseif playerLevel <= 100
			LeveledAbility = WO_PlayerWerewolfLvl100AndBelowAbility
		endif
		
	elseif playerLevel <= 150
		if playerLevel <= 105
			LeveledAbility = WO_PlayerWerewolfLvl105AndBelowAbility
		elseif playerLevel <= 110
			LeveledAbility = WO_PlayerWerewolfLvl110AndBelowAbility
		elseif playerLevel <= 115
			LeveledAbility = WO_PlayerWerewolfLvl115AndBelowAbility
		elseif playerLevel <= 120
			LeveledAbility = WO_PlayerWerewolfLvl120AndBelowAbility
		elseif playerLevel <= 125
			LeveledAbility = WO_PlayerWerewolfLvl125AndBelowAbility
		elseif playerLevel <= 130
			LeveledAbility = WO_PlayerWerewolfLvl130AndBelowAbility
		elseif playerLevel <= 135
			LeveledAbility = WO_PlayerWerewolfLvl135AndBelowAbility
		elseif playerLevel <= 140
			LeveledAbility = WO_PlayerWerewolfLvl140AndBelowAbility
		elseif playerLevel <= 145
			LeveledAbility = WO_PlayerWerewolfLvl145AndBelowAbility
		elseif playerLevel <= 150
			LeveledAbility = WO_PlayerWerewolfLvl150AndBelowAbility
		endif
		
	elseif playerLevel <= 195
		if playerLevel <= 155
			LeveledAbility = WO_PlayerWerewolfLvl155AndBelowAbility
		elseif playerLevel <= 160
			LeveledAbility = WO_PlayerWerewolfLvl160AndBelowAbility
		elseif playerLevel <= 165
			LeveledAbility = WO_PlayerWerewolfLvl165AndBelowAbility
		elseif playerLevel <= 170
			LeveledAbility = WO_PlayerWerewolfLvl170AndBelowAbility
		elseif playerLevel <= 175
			LeveledAbility = WO_PlayerWerewolfLvl175AndBelowAbility
		elseif playerLevel <= 180
			LeveledAbility = WO_PlayerWerewolfLvl180AndBelowAbility
		elseif playerLevel <= 185
			LeveledAbility = WO_PlayerWerewolfLvl185AndBelowAbility
		elseif playerLevel <= 190
			LeveledAbility = WO_PlayerWerewolfLvl190AndBelowAbility
		elseif playerLevel <= 195
			LeveledAbility = WO_PlayerWerewolfLvl195AndBelowAbility
		endif
	else
		LeveledAbility = WO_PlayerWerewolfLvl200AndOverAbility
	endif

EndFunction


;------------------------------------------------------------
Function SetupFactions()
	if __shiftingBack
		;------------------------------------------------------------
		; people don't hate you no more
		;------------------------------------------------------------
		PlayerRef.SetAttackActorOnSight(false)
		PlayerRef.RemoveFromFaction(PlayerWerewolfFaction)
		PlayerRef.RemoveFromFaction(WerewolfFaction)
		
		;------------------------------------------------------------
		; unset the crime factions
		;------------------------------------------------------------
		int counter = 0
		while (counter < CrimeFactions.GetSize())
			(CrimeFactions.GetAt(counter) as Faction).SetPlayerEnemy(false)
			counter += 1
		endwhile
		
		;------------------------------------------------------------
		; and you're now recognized
		;------------------------------------------------------------
		Game.SetPlayerReportCrime(true)

	else
		;------------------------------------------------------------
		; make everyone hate you
		;------------------------------------------------------------
		PlayerRef.SetAttackActorOnSight(true)
		PlayerRef.AddToFaction(PlayerWerewolfFaction)
		PlayerRef.AddToFaction(WerewolfFaction)
		
		;------------------------------------------------------------
		; set the crime factions
		;------------------------------------------------------------
		int counter = 0
		while (counter < CrimeFactions.GetSize())
			(CrimeFactions.GetAt(counter) as Faction).SetPlayerEnemy()
			counter += 1
		endwhile
		
		;------------------------------------------------------------
		; but they also don't know that it's you
		;------------------------------------------------------------
		Game.SetPlayerReportCrime(false)
		
	endif

EndFunction


;------------------------------------------------------------
Function SetupShiftBackTimeTracking()
	;------------------------------------------------------------
	; shift back tracking
	;------------------------------------------------------------
	RegisterForSingleUpdateGameTime(RampageMinutesGameTime / 60.0)
	
EndFunction


;------------------------------------------------------------
; Fix of vampire-lord post shift back dual weapons bug when only one hand equipes a weapon instead of both
;------------------------------------------------------------
Function EquippedWeaponsInBothHandsCheck()
	__leftHandWeapon = PlayerRef.GetEquippedWeapon(true)
	__rightHandWeapon = PlayerRef.GetEquippedWeapon(false)
		
EndFunction


;------------------------------------------------------------
Function UnequipWeaponInLeftHandIfNecessary()
	if __leftHandWeapon && __rightHandWeapon
		PlayerRef.UnequipItem(__leftHandWeapon, false, true)
	endif

EndFunction


;------------------------------------------------------------
Function EquipWeaponInLeftHandIfNecessary()
	if __leftHandWeapon && __rightHandWeapon
		PlayerRef.EquipItemEx(__leftHandWeapon, 2, false, false)
	endif
	
EndFunction

; ####### FUNCTIONS END
; ==============================================================================================
