Scriptname PlayerWerewolfScript extends ReferenceAlias  

; ==============================================================================================
;########## PROPERTIES 

Race Property WerewolfBeastRace auto

;########## PROPERTIES INIT END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnPlayerLoadGame()
	(GetOwningQuest() as PlayerWerewolfChangeScript).HandlePlayerLoadGame()

EndEvent


;------------------------------------------------------------
Event OnRaceSwitchComplete()
	;------------------------------------------------------------
	; The player was made invlunerable just before the race switch
	; Now that that is finished, make sure the player isn't invulnerable or ghosted any more
	;------------------------------------------------------------
	Game.GetPlayer().GetActorBase().SetInvulnerable(false)
	Game.GetPlayer().SetGhost(false)

	if GetActorReference().GetRace() == WerewolfBeastRace
		(GetOwningQuest() as PlayerWerewolfChangeScript).StartTracking()
	else
		(GetOwningQuest() as PlayerWerewolfChangeScript).Shutdown()
 	endif

EndEvent

; ####### EVENTS END
; ==============================================================================================
