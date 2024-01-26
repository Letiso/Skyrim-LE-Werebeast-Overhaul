Scriptname C03RampagePlayerScript extends ReferenceAlias  


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnPlayerLoadGame()
	(GetOwningQuest() as C03RampageQuest).HandlePlayerLoadGame()
	
EndEvent


;------------------------------------------------------------
Event OnEnterBleedout()
	(GetOwningQuest() as C03RampageQuest).ShiftBack()
	
EndEvent


;------------------------------------------------------------
Event OnHit(objectReference akAggressor, Form akSource, projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
	float healthPercentage = Game.GetPlayer().GetActorValuePercentage("health")

	; when player's health < 20%
	if (healthPercentage < 0.2)
		(GetOwningQuest() as C03RampageQuest).ShiftBack()
	endif
	
EndEvent

; ####### EVENTS END
; ==============================================================================================
