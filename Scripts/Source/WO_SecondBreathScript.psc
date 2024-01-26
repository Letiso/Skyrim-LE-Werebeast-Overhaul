Scriptname WO_SecondBreathScript extends ActiveMagicEffect  


; ==============================================================================================
; ####### PROPERTIES

Sound Property MAGPowerRacialHistskin Auto

; ####### PROPERTIES END
; ==============================================================================================

; ==============================================================================================
; ####### INTERNAL DATA

actor targetActor

int bonusHealth
int bonusStamina

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	MAGPowerRacialHistskin.Play(akTarget)
	
	ActorValueInfo healthAVIF = ActorValueInfo.GetAVIByName("health")
	ActorValueInfo staminaAVIF = ActorValueInfo.GetAVIByName("stamina")
	targetActor = akTarget

	bonusHealth = ((healthAVIF.GetMaximumValue(targetActor) / 100) * GetMagnitude()) as int
	bonusStamina = ((staminaAVIF.GetMaximumValue(targetActor) / 100) * GetMagnitude()) as int

	akTarget.ModAV("health", bonusHealth)
	akTarget.ModAV("stamina", bonusStamina)

EndEvent


;------------------------------------------------------------
Event OnEffectFinish(actor akTarget, actor akCaster)
	; make sure your health is reasonable before effect ends
	float currentHealth = akTarget.GetAV("health")

	float needToBeRestoredHealth = (currentHealth - bonusHealth) * -1
	if needToBeRestoredHealth > 0
		akTarget.RestoreAV("health", needToBeRestoredHealth + 1)
	endif

	akTarget.ModAV("health", -bonusHealth)
	akTarget.ModAV("stamina", -bonusStamina)

EndEvent

; ####### EVENTS END
; ==============================================================================================
