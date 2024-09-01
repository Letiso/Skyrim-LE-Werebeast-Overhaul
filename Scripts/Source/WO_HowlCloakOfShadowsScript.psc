Scriptname WO_HowlCloakOfShadowsScript extends ActiveMagicEffect  


; ==============================================================================================
; ####### PROPERTIES
; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA

actor targetActor
float lastDamageResist

float damageResistMult
float additionalDamageResist

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	targetActor = akTarget
	damageResistMult = GetMagnitude()

	additionalDamageResist = targetActor.GetAV("DamageResist") * damageResistMult
	
	lastDamageResist = targetActor.GetAV("DamageResist")
	targetActor.ModAV("DamageResist", additionalDamageResist)

	RegisterForUpdate(1)

EndEvent


;------------------------------------------------------------
Event OnUpdate()
	if targetActor.GetAV("DamageResist") != lastDamageResist
		targetActor.ModAV("DamageResist", -additionalDamageResist)

		additionalDamageResist = targetActor.GetAV("DamageResist") * damageResistMult

		targetActor.ModAV("DamageResist", additionalDamageResist)
	endif

EndEvent


;------------------------------------------------------------
Event OnEffectFinish(actor akTarget, actor akCaster)	
	targetActor.ModAV("DamageResist", -additionalDamageResist)

EndEvent

; ####### EVENTS END
; ==============================================================================================


; ==============================================================================================
; ####### FUNCTIONS
; ####### FUNCTIONS END
; ==============================================================================================
