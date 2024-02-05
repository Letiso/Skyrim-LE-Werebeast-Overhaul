Scriptname WO_HowlTerribleRoarScript extends ActiveMagicEffect  


; ==============================================================================================
; ####### PROPERTIES

EffectShader Property WO_HowlVictoryCryFXS Auto

; ####### PROPERTIES END
; ==============================================================================================

; ==============================================================================================
; ####### INTERNAL DATA
; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	;------------------------------------------------------------
	; because of 'Victory Cry' howl applyes shaderFX by script, it have to be stopped manually when this effect dispels 'Victory Cry' effect
	;------------------------------------------------------------
	WO_HowlVictoryCryFXS.Stop(akTarget)

EndEvent

; ####### EVENTS END
; ==============================================================================================
