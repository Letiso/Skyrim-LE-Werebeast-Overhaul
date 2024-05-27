Scriptname WO_SecondActiveMagicEffectShow extends ActiveMagicEffect  


; ==============================================================================================
; ####### PROPERTIES

Actor Property PlayerRef Auto

Spell Property SecondActiveMagicEffect Auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	PlayerRef.AddSpell(SecondActiveMagicEffect, abVerbose = False)

EndEvent


;------------------------------------------------------------
Event OnEffectFinish(actor akTarget, actor akCaster)
	PlayerRef.RemoveSpell(SecondActiveMagicEffect)

EndEvent

; ####### EVENTS END
; ==============================================================================================
