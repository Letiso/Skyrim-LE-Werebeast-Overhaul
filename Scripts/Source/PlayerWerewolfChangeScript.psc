Scriptname PlayerWerewolfChangeScript extends Quest  


; ==============================================================================================
; ####### PROPERTIES

Actor Property PlayerRef Auto

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
ImageSpaceModifier Property WerewolfWarningImod Auto
ImageSpaceModifier Property WerewolfChangeImod Auto

;------------------------------------------------------------
; Sound
;------------------------------------------------------------
Sound Property MAGPowerRacialRedguardAdrenalineRushFire2DDUPLICATE000 Auto

;------------------------------------------------------------
; Factions
;------------------------------------------------------------
Faction Property PlayerWerewolfFaction Auto
Faction Property WerewolfFaction Auto
FormList Property WerewolfHateFactions Auto

;------------------------------------------------------------
; 'Werewolf Overhaul' mod - jewerly
;------------------------------------------------------------
Armor Property DA05HircinesRing Auto

Armor Property WO_NecklaceTerribleRoar Auto
Armor Property WO_NecklaceVictoryCry Auto
Armor Property WO_NecklaceCallOfThePack Auto
Armor Property WO_NecklaceSovereignsVoice Auto
Armor Property WO_NecklaceUnrelentingRoar Auto
Armor Property WO_NecklaceCursedFlame Auto

GlobalVariable Property WO_RingPowerHircines Auto
GlobalVariable Property WO_RingPowerFrostmoonBloodlust Auto
GlobalVariable Property WO_RingPowerFrostmoonMoon Auto
GlobalVariable Property WO_RingPowerFrostmoonInstinct Auto
GlobalVariable Property WO_RingPowerFrostmoonHunt Auto

GlobalVariable Property WO_NecklacePowerTerribleRoar Auto
GlobalVariable Property WO_NecklacePowerVictoryCry Auto
GlobalVariable Property WO_NecklacePowerCallOfThePack Auto
GlobalVariable Property WO_NecklacePowerSovereignsVoice Auto
GlobalVariable Property WO_NecklacePowerUnrelentingRoar Auto
GlobalVariable Property WO_NecklacePowerCursedFlame Auto

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
Weapon Property WO_Unarmed Auto

;------------------------------------------------------------
; Abilities
;------------------------------------------------------------
Spell Property WO_RevertForm Auto

Spell Property WO_PredatorsFlair Auto
Spell Property WO_PredatorsFlairSavageFeeding Auto

; in vanilla it was a howl, for now it's an ability
Spell Property WO_WerewolfDetectLife Auto
; in case when we have my other mod 'Detect Life & Night Vision Overhaul' installed, we wanna to use ability from there
Spell Property WerewolfDetectLife Auto

Spell Property WO_AcceleratedMetabolism Auto

Spell Property WO_SupernaturalReflexes Auto

;------------------------------------------------------------
; When race switch is happen & all processing is done, we don't wanna to see a SKYUI notification no longer, so we have to dispel it manually
;------------------------------------------------------------
Spell Property WerewolfChange Auto
Spell Property WerewolfChangeFX Auto

;------------------------------------------------------------
; Howls
;------------------------------------------------------------
WordOfPower Property WO_HowlTerribleRoar Auto

Spell Property WO_HowlWerewolfTerribleRoarSpell1 Auto
Spell Property WO_HowlWerewolfTerribleRoarSpell2 Auto
Spell Property WO_HowlWerewolfTerribleRoarSpell3 Auto
Shout Property WO_HowlWerewolfTerribleRoar1 Auto
Shout Property WO_HowlWerewolfTerribleRoar2 Auto
Shout Property WO_HowlWerewolfTerribleRoar3 Auto

Shout Property WO_HowlWerewolfVictoryCry Auto
WordOfPower Property WO_HowlVictoryCry Auto

; Call Of The Pack
Shout Property WO_HowlWerewolfCallOfThePack Auto
WordOfPower Property WO_HowlCallOfThePack Auto

Shout Property WO_HowlWerewolfSovereignsVoice1 Auto
Shout Property WO_HowlWerewolfSovereignsVoice2 Auto
Shout Property WO_HowlWerewolfSovereignsVoice3 Auto
WordOfPower Property WO_HowlSovereignsVoice Auto
; WO_HowlSovereignsVoiceAliasController Property HowlSovereignsVoiceAliasController Auto

Shout Property WO_HowlWerewolfUnrelentingRoar1 Auto
Shout Property WO_HowlWerewolfUnrelentingRoar2 Auto
Shout Property WO_HowlWerewolfUnrelentingRoar3 Auto
WordOfPower Property WO_HowlUnrelentingRoar Auto
Message Property WO_UnrelentingRoarGainMessage Auto
Spell Property WO_HowlWerewolfUnrelentingRoarSpell1 Auto
Spell Property WO_HowlWerewolfUnrelentingRoarSpell2 Auto
Spell Property WO_HowlWerewolfUnrelentingRoarSpell3 Auto

Shout Property WO_HowlWerewolfCursedFlame1 Auto
Shout Property WO_HowlWerewolfCursedFlame2 Auto
Shout Property WO_HowlWerewolfCursedFlame3 Auto
WordOfPower Property WO_HowlCursedFlame Auto

Shout Property WO_HowlWerewolfIndomitableRage Auto
WordOfPower Property WO_HowlIndomitableRage Auto

Shout Property WO_HowlWerewolfCloakOfShadows Auto
WordOfPower Property WO_HowlCloakOfShadows Auto

;------------------------------------------------------------
; To save last equipped spell except 'Revert Form' & equip it next time
;------------------------------------------------------------
Quest Property WO_PlayerWerewolfQuestStorage Auto

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
; Feeding
;------------------------------------------------------------
Keyword Property ActorTypeNPC Auto
Idle Property SpecialFeeding Auto
Spell property BleedingSpell Auto
{This Spell is for making the target of feeding bleed.}

Spell Property WerewolfFeed Auto
Message Property PlayerWerewolfFeedMessage Auto

GlobalVariable Property WO_FeedingCounter Auto

;------------------------------------------------------------
; Dawnguard DLC - perks
;------------------------------------------------------------
GlobalVariable Property DLC1WerewolfMaxPerks Auto

Perk Property DLC1GorgingPerk Auto
Perk Property DlC1SavageFeedingPerk Auto

;------------------------------------------------------------
; Werewolf Overhaul mod - perks
;------------------------------------------------------------
; active abilities
Perk Property WO_DetectAllCreatures Auto
Perk Property WO_AcceleratedMetabolismPerk Auto
Perk Property WO_SupernaturalReflexesPerk Auto

Perk Property WO_CallOfthePack1 Auto
Perk Property WO_SovereignsVoice1 Auto
Perk Property WO_SovereignsVoice2 Auto
Perk Property WO_SovereignsVoice3 Auto
Perk Property WO_TerribleRoar1 Auto
Perk Property WO_TerribleRoar2 Auto
Perk Property WO_TerribleRoar3 Auto
Perk Property WO_VictoryCry1 Auto
Perk Property WO_UnrelentingRoar1 Auto
Perk Property WO_UnrelentingRoar2 Auto
Perk Property WO_UnrelentingRoar3 Auto
Perk Property WO_CursedFlame1 Auto
Perk Property WO_CursedFlame2 Auto
Perk Property WO_CursedFlame3 Auto
Perk Property WO_IndomitableRage1 Auto
Perk Property WO_CloakOfShadows1 Auto

; passive abilities
Perk Property WO_Adrenaline Auto
Spell Property WO_PerkAdrenaline Auto

Perk Property WO_Acrobat1 Auto
Perk Property WO_Acrobat2 Auto
Spell Property WO_PerkAcrobat1 Auto
Spell Property WO_PerkAcrobat2 Auto

Perk Property WO_Maniac Auto
Spell Property WO_PerkManiac Auto

Perk Property WO_AnimalVigorPerk1 Auto
Perk Property WO_AnimalVigorPerk2 Auto

Perk Property WO_ScentOfBlood Auto
Spell Property WO_PerkScentOfBlood Auto

;------------------------------------------------------------
; Timers
;------------------------------------------------------------
float Property StandardDurationSeconds auto
{How long (in real seconds) the transformation lasts}

float Property DurationWarningTimeSeconds auto
{How long (in real seconds) before turning back we should warn the player}

float Property FeedExtensionTimeSeconds auto
{How long (in real seconds) that feeding extends werewolf time}

GlobalVariable Property TimeScale auto
GlobalVariable Property GameDaysPassed auto
GlobalVariable Property PlayerWerewolfShiftBackTime auto

;------------------------------------------------------------
; To add extra health & stamina from perks & race bonus
;------------------------------------------------------------
Int Property MaxHealthStaminaBonus = 100 Auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA

race __originalRace = None
bool __alreadyWarned = False
bool __shiftingBack = False

float __durationWarningTime = -1.0
float __feedExtensionTime = -1.0

shout _currentHowl
spell _currentBeastPower

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
; Shift back if it's time
;------------------------------------------------------------
Event OnUpdate()
	if PlayerRef.IsInKillMove()
		return
	endif

	float currentTime = GameDaysPassed.Value
	float shiftBackTime = PlayerWerewolfShiftBackTime.Value
	float warningTime = shiftBackTime - __durationWarningTime

	if currentTime >= shiftBackTime
		;------------------------------------------------------------
		; shift back
		;------------------------------------------------------------
		ShiftBack()
		
	elseif currentTime >= warningTime && !__alreadyWarned
		;------------------------------------------------------------
		; shift back soon, send the screen effect warning
		;------------------------------------------------------------
		WerewolfWarningImod.Apply()
		__alreadyWarned = True

	elseif __alreadyWarned && (currentTime < warningTime)
		;------------------------------------------------------------
		; we wanna to get the warning again, if we have to
		;------------------------------------------------------------
		__alreadyWarned = False
	endif

EndEvent

; ####### EVENTS END
; ==============================================================================================


; ==============================================================================================
; ####### FUNCTIONS

;------------------------------------------------------------
; Called by perk: PlayerWerewolfFeed on dead body activation
;------------------------------------------------------------
Function Feed(actor akVictim)
	;------------------------------------------------------------
	; play feeding animation
	;------------------------------------------------------------
	PlayerRef.PlayIdle(SpecialFeeding)
	
	;------------------------------------------------------------
	; a spell that simulates victim's bleeding
	;------------------------------------------------------------
	BleedingSpell.Cast(akVictim)

	;------------------------------------------------------------
	; apply base feeding bonus
	;------------------------------------------------------------
	ApplyBaseFeedBonus(akVictim)

	;------------------------------------------------------------
	; used by perk: Scent Of Blood to incrise claws damage after the feeding
	;------------------------------------------------------------
	if PlayerRef.HasPerk(WO_ScentOfBlood)
		WO_PerkScentOfBlood.Cast(PlayerRef)
	endif
	
EndFunction


;------------------------------------------------------------
; Called by WO_HowlCursedFlameSoulTrapFXScript, when the victim is turned to dust
;------------------------------------------------------------
Function CursedFlameFeed(actor akVictim)
	;------------------------------------------------------------
	; apply base feeding bonus
	;------------------------------------------------------------
	ApplyBaseFeedBonus(akVictim)
	
EndFunction


;------------------------------------------------------------
Function ApplyBaseFeedBonus(actor akVictim)
	;------------------------------------------------------------
	; health regen from feeding
	;------------------------------------------------------------
	WerewolfFeed.Cast(PlayerRef)

	;------------------------------------------------------------
	; delay shift back time depending on gorging perk & victim actor type
	;------------------------------------------------------------
	if PlayerRef.HasPerk(DLC1GorgingPerk) == 1
		if akVictim.HasKeyword(ActorTypeNPC)
			PlayerWerewolfShiftBackTime.Value += __feedExtensionTime * 2
		else
			PlayerWerewolfShiftBackTime.Value += __feedExtensionTime
		endif
	else
		if akVictim.HasKeyword(ActorTypeNPC)
			PlayerWerewolfShiftBackTime.Value += __feedExtensionTime
		else
			PlayerWerewolfShiftBackTime.Value += __feedExtensionTime / 2
		endif
	endif
	PlayerWerewolfFeedMessage.Show()

	;------------------------------------------------------------
	; used by perk: Maniac to incrise player's maximum health & stamina every 50 victims
	;------------------------------------------------------------
	WO_FeedingCounter.Value += 1
	SendModEvent("WerewolfFeeding")
	
EndFunction


;------------------------------------------------------------
; Called by PlayerWerewolfScript
;------------------------------------------------------------
Function HandlePlayerLoadGame()
	;------------------------------------------------------------
	; on save reload this settings are reseting to the defaults, so we have to set them again
	;------------------------------------------------------------
	ObjectManager.SetForm("RIVR", WerewolfBeastRace)
	ObjectManager.SetForm("RIVS", WO_SpellsPowers)

	;------------------------------------------------------------
	; unarmed weapon damage is resets to default each save load, so we have to set it again
	;------------------------------------------------------------
	WO_Unarmed.SetBaseDamage(PlayerRef.GetAV("UnarmedDamage") as int)

	;------------------------------------------------------------
	; dynamic fear spell magnitude is resets to default each save load, so we have to set it again
	;------------------------------------------------------------
	if PlayerRef.HasPerk(WO_TerribleRoar1)
		int playerLevel = PlayerRef.GetLevel()

		if PlayerRef.HasPerk(WO_TerribleRoar3)
			WO_HowlWerewolfTerribleRoarSpell3.SetNthEffectMagnitude(0, playerLevel * 1.30)
			WO_HowlWerewolfTerribleRoarSpell3.SetNthEffectMagnitude(1, playerLevel * 1.30)

		elseif PlayerRef.HasPerk(WO_TerribleRoar2)
			WO_HowlWerewolfTerribleRoarSpell2.SetNthEffectMagnitude(0, playerLevel * 1.15)
			WO_HowlWerewolfTerribleRoarSpell2.SetNthEffectMagnitude(1, playerLevel * 1.15)

		else
			WO_HowlWerewolfTerribleRoarSpell1.SetNthEffectMagnitude(0, playerLevel * 1.0)
			WO_HowlWerewolfTerribleRoarSpell1.SetNthEffectMagnitude(1, playerLevel * 1.0)
		endif
	endif

	;------------------------------------------------------------
	; the same for Unrelenting Roar spells
	;------------------------------------------------------------
	if PlayerRef.HasPerk(WO_UnrelentingRoar1)
		int playerLevel = PlayerRef.GetLevel()

		if PlayerRef.HasPerk(WO_UnrelentingRoar3)
			WO_HowlWerewolfUnrelentingRoarSpell3.SetNthEffectMagnitude(1, playerLevel * 1.30)
		elseif PlayerRef.HasPerk(WO_UnrelentingRoar2)
			WO_HowlWerewolfUnrelentingRoarSpell2.SetNthEffectMagnitude(1, playerLevel * 1.15)
		else
			WO_HowlWerewolfUnrelentingRoarSpell1.SetNthEffectMagnitude(1, playerLevel * 1.0)
		endif
	endif

	;------------------------------------------------------------
	; for compability with my other mod - 'Detect Life & Night Vision Overhaul' 
	;------------------------------------------------------------
	if PlayerRef.HasPerk(WO_DetectAllCreatures)
		Spell DLNV_WO_WerewolfDetectLife = Game.GetFormFromFile(0x478C65, "Detect Life & Night Vision Overhaul.esp") as spell

		;------------------------------------------------------------
		; when we install DLNV being in the beastform
		;------------------------------------------------------------
		if DLNV_WO_WerewolfDetectLife
			if WerewolfDetectLife == WO_WerewolfDetectLife
				PlayerRef.DispelSpell(WO_WerewolfDetectLife)
				SendModEvent("DetectAllCreaturesStop")

				WerewolfDetectLife = DLNV_WO_WerewolfDetectLife
				WO_SpellsPowers.AddForm(DLNV_WO_WerewolfDetectLife)
				
				PlayerRef.AddSpell(DLNV_WO_WerewolfDetectLife, false)

				if PlayerRef.GetEquippedSpell(2) == WO_WerewolfDetectLife
					PlayerRef.EquipSpell(DLNV_WO_WerewolfDetectLife, 2)
				endif

				PlayerRef.RemoveSpell(WO_WerewolfDetectLife)

			endif
		;------------------------------------------------------------
		; when we uninstall DLNV being in the beastform
		;------------------------------------------------------------
		else
			if WerewolfDetectLife != WO_WerewolfDetectLife
				WerewolfDetectLife = WO_WerewolfDetectLife

				PlayerRef.AddSpell(WO_WerewolfDetectLife, false)

				if PlayerRef.GetEquippedSpell(2) == None
					PlayerRef.EquipSpell(WO_WerewolfDetectLife, 2)
				endif

			endif
		endif
	endif

	;------------------------------------------------------------
	; when we've installed this mod after the first trasnformation 
	;	TODO: move this part of code to MCM
	;------------------------------------------------------------
	if !PlayerRef.HasSpell(WO_AbWerewolfPoison)
		PlayerRef.AddSpell(WO_AbWerewolfPoison, false)
	endif

	if !PlayerRef.HasSpell(WO_AbWerewolfSilver)
		PlayerRef.AddSpell(WO_AbWerewolfSilver, false)
	endif

	if !PlayerRef.HasSpell(WO_AbWerewolfSleep)
		PlayerRef.AddSpell(WO_AbWerewolfSleep, false)
	endif

	if !PlayerRef.IsInFaction(CompanionsCircle)
		PlayerRef.AddToFaction(CompanionsCircle)
	endif

	if !PlayerRef.HasSpell(PowerKhajiitNightEye)
		PlayerRef.AddSpell(PowerKhajiitNightEye, false)
	endif


EndFunction
;------------------------------------------------------------
; Factions
;------------------------------------------------------------
Faction Property CompanionsCircle Auto

;------------------------------------------------------------
; Werewolf weaknesses
;------------------------------------------------------------
Spell Property WO_AbWerewolfPoison Auto
Spell Property WO_AbWerewolfSilver Auto
Spell Property WO_AbWerewolfSleep Auto

; we wanna to have night vision at the human form eather
Spell Property PowerKhajiitNightEye Auto


;------------------------------------------------------------
; Called on stage 0 (On quest start) by WerewolfChangeEffectScript
;------------------------------------------------------------
Function PrepShift()
	;------------------------------------------------------------
	; screen effect
	;------------------------------------------------------------
	WerewolfChangeImod.Apply()
	MAGPowerRacialRedguardAdrenalineRushFire2DDUPLICATE000.Play(PlayerRef)

	;------------------------------------------------------------
	; setup the UI restrictions
	;------------------------------------------------------------
	Game.SetBeastForm(True)
	Game.EnableFastTravel(False)
    Game.EnablePlayerControls(abMovement = false, abFighting = false, abCamSwitch = true, abLooking = false, abSneaking = false, abMenu = false, abActivate = false, abJournalTabs = false, aiDisablePOVType = 1)
	Game.ForceThirdPerson()
	Game.ShowFirstPersonGeometry(true)

	;------------------------------------------------------------
	; make game to think that a Vampire Lord transform happens, so we can access to the special Quick Menu being a Werewolf
	; it also prevents unequipping of player's stuff after the shift back
	; and letting us to use our own spells & howls FormList, which will be able to use at special Quick Menu
	;------------------------------------------------------------
	ObjectManager.SetForm("RIVR", WerewolfBeastRace)
	ObjectManager.SetForm("RIVS", WO_SpellsPowers)
	
EndFunction


;------------------------------------------------------------
; Called on stage 1 by WerewolfTransformVisual script
;------------------------------------------------------------
Function InitialShift()
	if PlayerRef.IsDead()
		return		; then do nothing
	endif
	
	;------------------------------------------------------------
	; screen effect
	;------------------------------------------------------------
	WerewolfWarningImod.Apply()

	;------------------------------------------------------------
	; handle transformation process
	;------------------------------------------------------------
	FixDualWeaponReequipBug()
	HandleWerewolfJewerlyPowers()
	SwitchPlayerRace()

EndFunction


;------------------------------------------------------------
; Called by PlayerWerewolfScript after race switch
;------------------------------------------------------------
Function StartTracking()
	;------------------------------------------------------------
	; handle transformation process
	;------------------------------------------------------------
	UnequipMagic()
	HandlePlayerAbilities()
	HandlePlayerItems()
	SetupFactions()
	SetupShiftBackTimeTracking()

	;------------------------------------------------------------
	; increment stats	; for statistics, I suppose
	;------------------------------------------------------------
	Game.IncrementStat("Werewolf Transformations")

	;------------------------------------------------------------
	; magic effects from this spells no needed anymore
	;------------------------------------------------------------
	PlayerRef.DispelSpell(WerewolfChange)
	PlayerRef.DispelSpell(WerewolfChangeFX)

	;------------------------------------------------------------
	; usual werewolf gameplay
	;------------------------------------------------------------
	SetStage(10)
	
EndFunction


;------------------------------------------------------------
; Called from stage 100 or manually (most of cases)
;------------------------------------------------------------
Function ShiftBack()
	if __shiftingBack || PlayerRef.IsDead()
		return		; do nothing
	endif
	
	__shiftingBack = true
	UnRegisterForUpdate()
	SetStage(100)

	;------------------------------------------------------------
	; Waiting for synced animation to finish...
	;------------------------------------------------------------
	while (Game.GetPlayer().GetAnimationVariableBool("bIsSynced"))
        Utility.Wait(0.1)
    endwhile
	
	;------------------------------------------------------------
	; screen effect
	;------------------------------------------------------------
	WerewolfChangeImod.Apply()
	MAGPowerRacialRedguardAdrenalineRushFire2DDUPLICATE000.Play(PlayerRef)
	
	;------------------------------------------------------------
	; disable saving & waiting
	;------------------------------------------------------------
	Game.SetInCharGen(true, true, false)
	
	;------------------------------------------------------------
	; waiting for synced animation to finish
	;------------------------------------------------------------
	while PlayerRef.GetAnimationVariableBool("bIsSynced")
		Utility.Wait(0.1)
	endwhile
	
	;------------------------------------------------------------
	; handle transformation progress
	;------------------------------------------------------------
	HandlePlayerAbilities()
	HandlePlayerItems()
	HandleWerewolfJewerlyPowers()
	SwitchPlayerRace()
	SetupFactions()

EndFunction


;------------------------------------------------------------
Function Shutdown()
	;------------------------------------------------------------
	; handle transformation progress
	;------------------------------------------------------------
	FixDualWeaponReequipBug()

	;------------------------------------------------------------
	; disable ui restrictions
	;------------------------------------------------------------
	Game.SetBeastForm(False)
	Game.EnableFastTravel(True)
	Game.EnablePlayerControls(abMovement = false, abFighting = false, abCamSwitch = true, abLooking = false, abSneaking = false, abMenu = false, abActivate = false, abJournalTabs = false, aiDisablePOVType = 1)
	Game.ShowFirstPersonGeometry(true)
	
	;------------------------------------------------------------
	; enable saving & waiting
	;------------------------------------------------------------
	Game.SetInCharGen(false, false, false)

	;------------------------------------------------------------
	; restore vampire-lord transform behaviour
	;------------------------------------------------------------
	ObjectManager.SetForm("RIVR", DLC1VampireBeastRace)
	ObjectManager.SetForm("RIVS", DLC1VampireSpellsPowers)
	
	;------------------------------------------------------------
	; gave achievement if necessary
	;------------------------------------------------------------
	if Game.QueryStat("NumWerewolfPerks") >= DLC1WerewolfMaxPerks.Value
		Game.AddAchievement(57)
	endif

	;------------------------------------------------------------
	; magic effect from this spell no needed anymore
	;------------------------------------------------------------
	PlayerRef.DispelSpell(WO_RevertForm)

	;------------------------------------------------------------
	; stop the quest itself
	;------------------------------------------------------------
	self.Stop()
	
EndFunction


;------------------------------------------------------------
Function FixDualWeaponReequipBug()
	if !__shiftingBack
		EquippedWeaponsInBothHandsCheck()
		UnequipWeaponInLeftHandIfNecessary()

	else
		EquipWeaponInLeftHandIfNecessary()

	endif

EndFunction



; ------------------------------------------------------------
Function HandleWerewolfJewerlyPowers()
	if !__shiftingBack
		;------------------------------------------------------------
		; turn on all the werewolf ring variables if we have equipped any
		;------------------------------------------------------------
		; Right hand
		;------------------------------------------------------------
		if PlayerRef.isEquipped(DA05HircinesRing)
			WO_RingPowerHircines.Value = 1

		elseif PlayerRef.isEquipped(DLC2dunFrostmoonRingMoon)
			WO_RingPowerFrostmoonMoon.Value = 1

		elseif PlayerRef.isEquipped(DLC2dunFrostmoonRingHunt)
			WO_RingPowerFrostmoonHunt.Value = 1

		elseif PlayerRef.isEquipped(DLC2dunFrostmoonRingBloodlust)
			WO_RingPowerFrostmoonBloodlust.Value = 1

		elseif PlayerRef.isEquipped(DLC2dunFrostmoonRingInstinct)
			WO_RingPowerFrostmoonInstinct.Value = 1
		endif
		;------------------------------------------------------------
		; Left hand
		;------------------------------------------------------------

		;------------------------------------------------------------
		; turn on all the werewolf necklace variables if we have equipped any
		;------------------------------------------------------------
		; if PlayerRef.isEquipped(WO_NecklaceTerribleRoar)
		; 	WO_NecklacePowerTerribleRoar.Value = 1

		; elseif PlayerRef.isEquipped(WO_NecklaceVictoryCry)
		; 	WO_NecklacePowerVictoryCry.Value = 1

		if PlayerRef.isEquipped(WO_NecklaceCallOfThePack)
			WO_NecklacePowerCallOfThePack.Value = 1

		; elseif PlayerRef.isEquipped(WO_NecklaceSovereignsVoice)
		; 	;------------------------------------------------------------
 	; 		; maintained by WO_HowlSovereingsVoiceNecklace script (by the necklace itself)
		; 	;------------------------------------------------------------

		; elseif PlayerRef.isEquipped(WO_NecklaceUnrelentingRoar)
		; 	WO_NecklacePowerUnrelentingRoar.Value = 1

		elseif PlayerRef.isEquipped(WO_NecklaceCursedFlame)
			WO_NecklacePowerCursedFlame.Value = 1

		; elseif PlayerRef.isEquipped(WO_NecklaceIndomitableRage)
		; 	WO_NecklacePowerIndomitableRage.Value = 1

		; elseif PlayerRef.isEquipped(WO_NecklaceCloakOfShadows)
		; 	WO_NecklacePowerWO_NecklaceCloakOfShadows.Value = 1
		endif
		
	else
		;------------------------------------------------------------
		; turn off all the werewolf necklace/ring variables when we change back
		;------------------------------------------------------------
		WO_RingPowerHircines.Value = 0
		WO_RingPowerFrostmoonBloodlust.Value = 0
		WO_RingPowerFrostmoonMoon.Value = 0
		WO_RingPowerFrostmoonInstinct.Value = 0
		WO_RingPowerFrostmoonHunt.Value = 0

		WO_NecklacePowerTerribleRoar.Value = 0
		WO_NecklacePowerVictoryCry.Value = 0
		WO_NecklacePowerCallOfThePack.Value = 0
		;------------------------------------------------------------
 		; WO_NecklacePowerSovereignsVoice.Value maintained by WO_HowlSovereingsVoiceNecklace script (by the necklace itself)
		;------------------------------------------------------------
		WO_NecklacePowerUnrelentingRoar.Value = 0
		WO_NecklacePowerCursedFlame.Value = 0
		; WO_NecklacePowerIndomitableRage.Value = 1
		; WO_NecklacePowerWO_NecklaceCloakOfShadows.Value = 1
		
	endif

EndFunction


;------------------------------------------------------------
Function SwitchPlayerRace()
	if !__shiftingBack
		;------------------------------------------------------------
		; you're can't be harmed until the race isn't switched
		;------------------------------------------------------------
		PlayerRef.GetActorBase().SetInvulnerable(true)
		PlayerRef.SetGhost()

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

	else
		;------------------------------------------------------------
		; you're can't be harmed until the race isn't switched back
		;------------------------------------------------------------
		PlayerRef.GetActorBase().SetInvulnerable(true)
		PlayerRef.SetGhost()

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

	endif
	
EndFunction


;------------------------------------------------------------
Function HandlePlayerItems()
	if !__shiftingBack
		;------------------------------------------------------------
		; remove werewolf animated transition skin added by WerewolfTransformVisual script
		;------------------------------------------------------------
		PlayerRef.RemoveItem(ArmorFXWerewolfTransitionSkin, 1, True)

		;------------------------------------------------------------
		; unequip all the player's stuff (armors, clothes & weapons)
		;------------------------------------------------------------
		PlayerRef.UnequipAll()

		;------------------------------------------------------------
		; equip werewolf unarmed "weapon"	; this is needed for werewolf attack perks to work properly
		;------------------------------------------------------------
		; weapon animation type changed from 'HandToHandMelee' to 'TwoHandSword' (visually no difference between this animations) 
		; to make able impacts for non-actors (doors, rocks, trees etc.), 
		; so we have to set a weapons damage like ours unarmed damage
		;------------------------------------------------------------
		WO_Unarmed.SetBaseDamage(PlayerRef.GetAV("UnarmedDamage") as int)
		Utility.Wait(0.1)
		PlayerRef.EquipItem(WO_Unarmed, False, True)

	else
		;------------------------------------------------------------
		; remove werewolf unarmed "weapon"
		;------------------------------------------------------------
		PlayerRef.RemoveItem(WO_Unarmed, 1, True)

	endif

EndFunction


;------------------------------------------------------------
Function UnequipMagic()
	;------------------------------------------------------------
	; unequip left & right hand spells, abilities & shouts
	;------------------------------------------------------------
	Spell _leftHand = PlayerRef.GetEquippedSpell(0)
	Spell _rightHand = PlayerRef.GetEquippedSpell(1)
	Spell _power = PlayerRef.GetEquippedSpell(2)
	Shout _voice = PlayerRef.GetEquippedShout()
	
	if _leftHand != None
		PlayerRef.UnequipSpell(_leftHand, 0)
	endif
	
	if _rightHand != None
		PlayerRef.UnequipSpell(_rightHand, 1)
	endif
	
	if _power != None
		PlayerRef.UnequipSpell(_power, 2)
	elseif _voice != None
		PlayerRef.UnequipShout(_voice)
	endif

EndFunction


;------------------------------------------------------------
Function HandlePlayerAbilities()
	if !__shiftingBack
		;------------------------------------------------------------
		; and leveled ability
		;------------------------------------------------------------
		EstablishLeveledAbility()
		PlayerRef.AddSpell(LeveledAbility, false)
		
		;------------------------------------------------------------
		; add the spell that allowes us to turn back manually 
		;------------------------------------------------------------
		PlayerRef.AddSpell(WO_RevertForm, false)

		;------------------------------------------------------------
		; add the spell that showing corpses available for feeding
		;------------------------------------------------------------
		AddPredatorFlair()

		;------------------------------------------------------------
		; add werewolf beast powers (left perks branch)
		;------------------------------------------------------------
		AddBeastPowerDetectAllCreatures()
		AddBeastPowerAcceleratedMetabolism()
		AddBeastPowerSupernaturalReflexes()

		;------------------------------------------------------------
		; check for ability equipped at previous transformation
		;------------------------------------------------------------
		_currentHowl = (WO_PlayerWerewolfQuestStorage as WO_PlayerWerewolfQuestStorageScript).LastHowl
		_currentBeastPower = (WO_PlayerWerewolfQuestStorage as WO_PlayerWerewolfQuestStorageScript).LastBeastPower

		;------------------------------------------------------------
		; add werewolf howls (right perks branch)
		;------------------------------------------------------------
		AddHowlTerribleRoar()
		AddHowlVictoryCry()
		AddHowlCallOfThePack()
		AddHowlSovereignsVoice()
		AddHowlUnrelentingRoar()
		AddHowlCursedFlame()
		AddHowlIndomitableRage()
		AddHowlCloakOfShadows()

		;------------------------------------------------------------
		; equip an ability from previous transformation if we have one
		;------------------------------------------------------------
		if _currentHowl
			PlayerRef.EquipShout(_currentHowl)
		elseif _currentBeastPower
			PlayerRef.EquipSpell(_currentBeastPower, 2)
		endif

		;------------------------------------------------------------
		; add passive abilities
		;------------------------------------------------------------
		if PlayerRef.HasPerk(WO_Adrenaline)
			;------------------------------------------------------------
			; ability switcher that debending on player's health percentage
			;------------------------------------------------------------
				PlayerRef.AddSpell(WO_PerkAdrenaline, false)
			endif

		if PlayerRef.HasPerk(WO_Maniac)
			;------------------------------------------------------------
			; feeding event call back
			;------------------------------------------------------------
			PlayerRef.AddSpell(WO_PerkManiac, false)
		endif

		if PlayerRef.HasPerk(WO_Acrobat2)
			;------------------------------------------------------------
			; incrising jump height ability
			;------------------------------------------------------------
			PlayerRef.AddSpell(WO_PerkAcrobat2, false)
		elseif PlayerRef.HasPerk(WO_Acrobat1)
			PlayerRef.AddSpell(WO_PerkAcrobat1, false)
		endif

	else
		;------------------------------------------------------------
		; save last equipped howl\beast power to equip it next time
		;------------------------------------------------------------
		Shout _equippedHowl = PlayerRef.GetEquippedShout()
		Spell _equippedSpell = PlayerRef.GetEquippedSpell(2)

		if _equippedHowl
			(WO_PlayerWerewolfQuestStorage as WO_PlayerWerewolfQuestStorageScript).LastHowl = _equippedHowl
			(WO_PlayerWerewolfQuestStorage as WO_PlayerWerewolfQuestStorageScript).LastBeastPower = None
		elseif _equippedSpell && (_equippedSpell != WO_RevertForm)
			(WO_PlayerWerewolfQuestStorage as WO_PlayerWerewolfQuestStorageScript).LastHowl = None
			(WO_PlayerWerewolfQuestStorage as WO_PlayerWerewolfQuestStorageScript).LastBeastPower = _equippedSpell
		else
			(WO_PlayerWerewolfQuestStorage as WO_PlayerWerewolfQuestStorageScript).LastHowl = None
			(WO_PlayerWerewolfQuestStorage as WO_PlayerWerewolfQuestStorageScript).LastBeastPower = None
		endif

		;------------------------------------------------------------
		; remove werewolf beast powers & howls
		;------------------------------------------------------------
		; TODO REPLACE BY human form separate spell
		; we wanna to keep WerewolfDetectLife at human form

		WO_SpellsPowers.RemoveAddedForm(WerewolfDetectLife)

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
		; remove passive leveled ability
		;------------------------------------------------------------
		PlayerRef.RemoveSpell(LeveledAbility)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddPredatorFlair()	
	if PlayerRef.HasPerk(DlC1SavageFeedingPerk)
		PlayerRef.AddSpell(WO_PredatorsFlairSavageFeeding, false)
	else
		PlayerRef.AddSpell(WO_PredatorsFlair, false)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddBeastPowerDetectAllCreatures()
	if PlayerRef.HasPerk(WO_DetectAllCreatures)
		;------------------------------------------------------------
		; check if we have installed & enabled the 'Detect Life & Night Vision Overhaul' mod
		;------------------------------------------------------------
		Spell DLNV_WO_WerewolfDetectLife = Game.GetFormFromFile(0x478C65, "Detect Life & Night Vision Overhaul.esp") as spell

		if DLNV_WO_WerewolfDetectLife
			WerewolfDetectLife = DLNV_WO_WerewolfDetectLife
			WO_SpellsPowers.AddForm(DLNV_WO_WerewolfDetectLife)

		else
		;------------------------------------------------------------
		; otherwise we wanna to use 'Detect All Creatures' ability from this mod
		;------------------------------------------------------------
			WerewolfDetectLife = WO_WerewolfDetectLife
			WO_SpellsPowers.AddForm(WO_WerewolfDetectLife)

		endif

		;------------------------------------------------------------
		; give the spell chosen above
		;------------------------------------------------------------
		PlayerRef.AddSpell(WerewolfDetectLife, false)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddBeastPowerSupernaturalReflexes()
	if PlayerRef.HasPerk(WO_SupernaturalReflexesPerk)
		PlayerRef.AddSpell(WO_SupernaturalReflexes, false)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddBeastPowerAcceleratedMetabolism()
	if PlayerRef.HasPerk(WO_AcceleratedMetabolismPerk)
		PlayerRef.AddSpell(WO_AcceleratedMetabolism, false)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddHowlTerribleRoar()
	Shout TerribleRoar
	int playerLevel = PlayerRef.GetLevel()

	if PlayerRef.HasPerk(WO_TerribleRoar1)
		if PlayerRef.HasPerk(WO_TerribleRoar3)
			WO_HowlWerewolfTerribleRoarSpell3.SetNthEffectMagnitude(0, playerLevel * 1.30)
			WO_HowlWerewolfTerribleRoarSpell3.SetNthEffectMagnitude(1, playerLevel * 1.3)
			TerribleRoar = WO_HowlWerewolfTerribleRoar3
			Game.UnlockWord(WO_HowlTerribleRoar)

		elseif PlayerRef.HasPerk(WO_TerribleRoar2)
			WO_HowlWerewolfTerribleRoarSpell2.SetNthEffectMagnitude(0, playerLevel * 1.15)
			WO_HowlWerewolfTerribleRoarSpell2.SetNthEffectMagnitude(1, playerLevel * 1.15)
			TerribleRoar = WO_HowlWerewolfTerribleRoar2
			Game.UnlockWord(WO_HowlTerribleRoar)

		elseif PlayerRef.HasPerk(WO_TerribleRoar1)
			WO_HowlWerewolfTerribleRoarSpell1.SetNthEffectMagnitude(0, playerLevel * 1.0)
			WO_HowlWerewolfTerribleRoarSpell1.SetNthEffectMagnitude(1, playerLevel * 1.0)
			TerribleRoar = WO_HowlWerewolfTerribleRoar1
			Game.UnlockWord(WO_HowlTerribleRoar)
		endif

		PlayerRef.AddShout(TerribleRoar)
		if !_currentHowl && !_currentBeastPower
			PlayerRef.EquipShout(TerribleRoar)
		endif
	endif

EndFunction


;------------------------------------------------------------
Function AddHowlVictoryCry()
	if PlayerRef.HasPerk(WO_VictoryCry1)
		Game.UnlockWord(WO_HowlVictoryCry)
		PlayerRef.AddShout(WO_HowlWerewolfVictoryCry)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddHowlCallOfThePack()
	if PlayerRef.HasPerk(WO_CallOfThePack1)
		Game.UnlockWord(WO_HowlCallOfThePack)
		PlayerRef.AddShout(WO_HowlWerewolfCallOfThePack)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddHowlSovereignsVoice()
	if PlayerRef.HasPerk(WO_SovereignsVoice3)
		Game.UnlockWord(WO_HowlSovereignsVoice)
		PlayerRef.AddShout(WO_HowlWerewolfSovereignsVoice3)
	elseif PlayerRef.HasPerk(WO_SovereignsVoice2)
		Game.UnlockWord(WO_HowlSovereignsVoice)
		PlayerRef.AddShout(WO_HowlWerewolfSovereignsVoice2)
	elseif PlayerRef.HasPerk(WO_SovereignsVoice1)
		Game.UnlockWord(WO_HowlSovereignsVoice)
		PlayerRef.AddShout(WO_HowlWerewolfSovereignsVoice1)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddHowlUnrelentingRoar()
	if PlayerRef.HasPerk(WO_UnrelentingRoar1)
		int _playerLevel = PlayerRef.GetLevel()
		shout _howlUnrelentingRoar = WO_HowlWerewolfUnrelentingRoar1

		if PlayerRef.HasPerk(WO_UnrelentingRoar3)
			WO_HowlWerewolfUnrelentingRoarSpell3.SetNthEffectMagnitude(1, _playerLevel * 1.30)
			_howlUnrelentingRoar = WO_HowlWerewolfUnrelentingRoar3

		elseif PlayerRef.HasPerk(WO_UnrelentingRoar2)
			WO_HowlWerewolfUnrelentingRoarSpell2.SetNthEffectMagnitude(1, _playerLevel * 1.15)
			_howlUnrelentingRoar = WO_HowlWerewolfUnrelentingRoar2

		else
			WO_HowlWerewolfUnrelentingRoarSpell1.SetNthEffectMagnitude(1, _playerLevel * 1.0)
		endif

		Game.UnlockWord(WO_HowlUnrelentingRoar)
		PlayerRef.AddShout(_howlUnrelentingRoar)
	endif

EndFunction


;------------------------------------------------------------
Function AddHowlCursedFlame()
	if PlayerRef.HasPerk(WO_CursedFlame1)
		shout _howl
		if PlayerRef.HasPerk(WO_CursedFlame3)
			_howl = WO_HowlWerewolfCursedFlame3
		elseif PlayerRef.HasPerk(WO_CursedFlame3)
			_howl = WO_HowlWerewolfCursedFlame2
		else
			_howl = WO_HowlWerewolfCursedFlame1
		endif

		Game.UnlockWord(WO_HowlCursedFlame)
		PlayerRef.AddShout(_howl)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddHowlIndomitableRage()
	if PlayerRef.HasPerk(WO_IndomitableRage1)
		Game.UnlockWord(WO_HowlIndomitableRage)
		PlayerRef.AddShout(WO_HowlWerewolfIndomitableRage)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddHowlCloakOfShadows()
	if PlayerRef.HasPerk(WO_CloakOfShadows1)
		Game.UnlockWord(WO_HowlCloakOfShadows)
		PlayerRef.AddShout(WO_HowlWerewolfCloakOfShadows)
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
	if !__shiftingBack
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
		while (counter < WerewolfHateFactions.GetSize())
			(WerewolfHateFactions.GetAt(counter) as Faction).SetPlayerEnemy()
			counter += 1
		endwhile
		
		;------------------------------------------------------------
		; but they also don't know that it's you
		;------------------------------------------------------------
		Game.SetPlayerReportCrime(false)
		
		;------------------------------------------------------------
		; alert anyone nearby that they should now know the player is a werewolf
		;------------------------------------------------------------
		Game.SendWereWolfTransformation()

	else
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
		while (counter < WerewolfHateFactions.GetSize())
			(WerewolfHateFactions.GetAt(counter) as Faction).SetPlayerEnemy(false)
			counter += 1
		endwhile
		
		;------------------------------------------------------------
		; and you're now recognized
		;------------------------------------------------------------
		Game.SetPlayerReportCrime(true)
		
		;------------------------------------------------------------
		; alert anyone nearby that they should now know the player is a werewolf
		;------------------------------------------------------------
		Game.SendWereWolfTransformation()

	endif

EndFunction


;------------------------------------------------------------
Function SetupShiftBackTimeTracking()
	if WO_RingPowerHircines.Value
		return	; endless transformation
	endif
	
	;------------------------------------------------------------
	; recalculate times
	;------------------------------------------------------------
	__durationWarningTime = RealTimeSecondsToGameTimeDays(DurationWarningTimeSeconds)
	__feedExtensionTime   = RealTimeSecondsToGameTimeDays(FeedExtensionTimeSeconds)

	;------------------------------------------------------------
	; calculate when the player turns back
	;------------------------------------------------------------
	float currentTime = GameDaysPassed.Value
	float regressTime = currentTime + RealTimeSecondsToGameTimeDays(StandardDurationSeconds)
	PlayerWerewolfShiftBackTime.Value = regressTime

	;------------------------------------------------------------
	; shift back tracking
	;------------------------------------------------------------
	if !PlayerRef.IsEquipped(DA05HircinesRing)
		RegisterForUpdate(5)
	endif
	
EndFunction


;------------------------------------------------------------
; Time scale tools
;------------------------------------------------------------
float Function RealTimeSecondsToGameTimeDays(float realtime)
	float scaledSeconds = realtime * TimeScale.Value
	return scaledSeconds / (60 * 60 * 24)
EndFunction


;------------------------------------------------------------
float Function GameTimeDaysToRealTimeSeconds(float gametime)
	float gameSeconds = gametime * (60 * 60 * 24)
	return (gameSeconds / TimeScale.Value)
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
