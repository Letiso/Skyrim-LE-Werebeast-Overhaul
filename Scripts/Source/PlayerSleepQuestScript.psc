ScriptName PlayerSleepQuestScript extends Quest


; ==============================================================================================
; ####### PROPERTIES

Actor Property PlayerRef Auto

;------------------------------------------------------------
; Check if rested bonus is available for you right now
;------------------------------------------------------------
CompanionsHousekeepingScript Property CHScript Auto
Armor Property DA05HircinesRing Auto
Spell Property pDoomLoverAbility Auto

;------------------------------------------------------------
; Check if player wife\husband can sleep with you
;------------------------------------------------------------
ReferenceAlias Property LoveInterest Auto
Quest Property RelationshipMarriageFIN Auto

;------------------------------------------------------------
; Check if player current location is a Inn or Player's House
;------------------------------------------------------------
Keyword Property LocTypeInn Auto
Keyword Property LocTypePlayerHouse Auto

;------------------------------------------------------------
; Rested bonus types
;------------------------------------------------------------
Spell Property Rested Auto
Spell Property WellRested Auto
Spell Property MarriageSleepAbility Auto

;------------------------------------------------------------
; Rested message types
;------------------------------------------------------------
Message Property BeastBloodMessage  Auto
Message Property MarriageRestedMessage  Auto  
Message Property WellRestedMessage  Auto  
Message Property RestedMessage  Auto  

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnSleepStop(bool abInterrupted)
	;------------------------------------------------------------
	; Don't give player rested bonus if you're werewolf & Hircines Ring is not equipped
	;------------------------------------------------------------
	if (CHScript.PlayerHasBeastBlood == 1) && !PlayerRef.IsEquipped(DA05HircinesRing)
		BeastBloodMessage.Show()

	;------------------------------------------------------------
	; Don't run this if player has the Lover stone ability OR give you rested bonus otherwise
	;------------------------------------------------------------
	elseif PlayerRef.HasSpell(pDoomLoverAbility) == 0
		;------------------------------------------------------------
		; Giving player the Lover's Comfort spell for sleeping with your wife\husband anywhere
		;------------------------------------------------------------
		if RelationshipMarriageFIN.IsRunning() == True && RelationshipMarriageFIN.GetStage() >= 10 && PlayerRef.GetCurrentLocation() == LoveInterest.GetActorRef().GetCurrentLocation()
			MarriageRestedMessage.Show()
			RemoveRested()
			PlayerRef.AddSpell(MarriageSleepAbility, abVerbose = false)

		;------------------------------------------------------------
		; Giving player the Well Rested spell for sleeping in a Inn or a Player's House
		;------------------------------------------------------------
		elseif PlayerRef.GetCurrentLocation().HasKeyword(LocTypeInn) || PlayerRef.GetCurrentLocation().HasKeyword(LocTypePlayerHouse)
			WellRestedMessage.Show()
			RemoveRested()
			PlayerRef.AddSpell(WellRested, abVerbose = false)

		;------------------------------------------------------------
		; Giving player the Rested spell for sleeping anywhere else
		;------------------------------------------------------------
		else
			RestedMessage.Show()
			RemoveRested()
			PlayerRef.AddSpell(Rested, abVerbose = false)
		endif

	endif
	
EndEvent

; ####### EVENTS END
; ==============================================================================================


; ==============================================================================================
; ####### FUNCTIONS

;------------------------------------------------------------
Function RemoveRested()
	;------------------------------------------------------------
	; Remove all previous rested states
	;------------------------------------------------------------
	PlayerRef.RemoveSpell(MarriageSleepAbility)
	PlayerRef.RemoveSpell(WellRested)
	PlayerRef.RemoveSpell(Rested)

EndFunction

; ####### FUNCTIONS END
; ==============================================================================================
