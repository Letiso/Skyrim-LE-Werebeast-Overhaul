Scriptname WO_HowlCloakOfShadowsCloakSwitchSound extends ActiveMagicEffect


; ==============================================================================================
;########## PROPERTIES 

Sound Property MAGCloakIn Auto
Sound Property MAGCloakOut Auto

; Sound Property MAGCloakFireLP Auto
Sound Property WO_MAGCloakOfShadowsLP Auto

;########## PROPERTIES INIT END
; ==============================================================================================

int _ambientSoundInstance

; ==============================================================================================
;########## EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	MAGCloakIn.Play(akTarget)
	_ambientSoundInstance = WO_MAGCloakOfShadowsLP.Play(akTarget)

EndEvent


;------------------------------------------------------------
Event OnEffectFinish(actor akTarget, actor akCaster)
	Sound.StopInstance(_ambientSoundInstance)
	MAGCloakOut.Play(akTarget)

EndEvent

;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS
;########## FUNCTIONS END
; ==============================================================================================
