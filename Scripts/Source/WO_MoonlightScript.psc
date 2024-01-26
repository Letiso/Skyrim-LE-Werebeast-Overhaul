Scriptname WO_MoonlightScript extends ActiveMagicEffect  


; ==============================================================================================
; ####### PROPERTIES

Race Property WerewolfBeastRace Auto

; ####### PROPERTIES END
; ==============================================================================================

; ==============================================================================================
; ####### INTERNAL DATA

actor targetActor

int moonlightBonus

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	targetActor = akTarget
	moonlightBonus = (GetMagnitude() as int)

	akTarget.ModAV("health", moonlightBonus)
	akTarget.ModAV("stamina", moonlightBonus)

EndEvent


;------------------------------------------------------------
Event OnEffectFinish(actor akTarget, actor akCaster)
	; make sure your health is reasonable before effect ends
	float currentHealth = akTarget.GetAV("health")

	float needToBeRestoredHealth = (currentHealth - moonlightBonus) * -1
	if needToBeRestoredHealth > 0
		akTarget.RestoreAV("health", needToBeRestoredHealth + 1)
	endif

	akTarget.ModAV("health", -moonlightBonus)
	akTarget.ModAV("stamina", -moonlightBonus)

EndEvent

; ####### EVENTS END
; ==============================================================================================
