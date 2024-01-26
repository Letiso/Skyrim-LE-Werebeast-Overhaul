Scriptname WerewolfChangeEffectScript extends ActiveMagicEffect  
{Scripted effect for the werewolf change}


; ==============================================================================================
; ####### PROPERTIES

Quest Property PlayerWerewolfQuest Auto

Spell Property VFXSpell Auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	; set up tracking
	if (akTarget == Game.GetPlayer())
		PlayerWerewolfQuest.Start()
	endif

	VFXSpell.Cast(akTarget)
	
EndEvent

; ####### EVENTS END
; ==============================================================================================
