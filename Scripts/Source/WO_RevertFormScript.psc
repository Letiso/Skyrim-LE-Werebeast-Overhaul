Scriptname WO_RevertFormScript extends ActiveMagicEffect  


; ==============================================================================================
; ####### PROPERTIES

Quest Property PlayerWerewolfQuest Auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	if !Game.GetPlayer().IsInKillMove()
		(PlayerWerewolfQuest as PlayerWerewolfChangeScript).ShiftBack()
	endif

EndEvent

; ####### EVENTS END
; ==============================================================================================
