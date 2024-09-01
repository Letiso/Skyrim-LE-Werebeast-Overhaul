Scriptname WO_FakeActiveMagicEffect extends ActiveMagicEffect  


; ==============================================================================================
; ####### PROPERTIES

Spell Property FakeActiveMagicEffect Auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA
; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
;########## EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	if akTarget == Game.GetPlayer()
		FakeActiveMagicEffect.Cast(akCaster, akTarget)
	endif

EndEvent

;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS
;########## FUNCTIONS END
; ==============================================================================================