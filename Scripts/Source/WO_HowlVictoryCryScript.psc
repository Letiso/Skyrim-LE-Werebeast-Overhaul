Scriptname WO_HowlVictoryCryScript extends ActiveMagicEffect  


; ==============================================================================================
; ####### PROPERTIES

Topic Property TopicToSay Auto
GlobalVariable Property WICastNonHostileTimer  Auto  
GlobalVariable Property GameDaysPassed  Auto  

; ####### PROPERTIES END
; ==============================================================================================

; ==============================================================================================
; ####### INTERNAL DATA

actor targetActor

float healthBonus
float magickaBonus
float staminaBonus

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	targetActor = akTarget

	;------------------------------------------------------------
	; modify the actor values of the comrades
	;------------------------------------------------------------
	ActorValueInfo healthAVIF = ActorValueInfo.GetAVIByName("health")
	ActorValueInfo magickaAVIF = ActorValueInfo.GetAVIByName("magicka")
	ActorValueInfo staminaAVIF = ActorValueInfo.GetAVIByName("stamina")

	healthBonus = healthAVIF.GetMaximumValue(targetActor) * GetMagnitude()
	magickaBonus = magickaAVIF.GetMaximumValue(targetActor) * GetMagnitude()
	staminaBonus = staminaAVIF.GetMaximumValue(targetActor) * GetMagnitude()

	targetActor.ModAV("health", healthBonus)
	targetActor.ModAV("magicka", magickaBonus)
	targetActor.ModAV("stamina", staminaBonus)

	;------------------------------------------------------------
	; say topic by target on effect apply
	;------------------------------------------------------------
	if (targetActor != Game.GetPlayer()) && (targetActor.IsPlayerTeammate() == 1) \
		&& (GameDaysPassed.Value > WICastNonHostileTimer.Value) && (targetActor.GetCurrentScene() == None)

		WICastNonHostileTimer.SetValue(GameDaysPassed.GetValue() + 0.01)
		targetActor.Say(TopicToSay)
	endif

EndEvent


;------------------------------------------------------------
Event OnEffectFinish(actor akTarget, actor akCaster)
	;------------------------------------------------------------
	; make sure your health is reasonable before effect ends
	;------------------------------------------------------------
	float currentHealth = targetActor.GetAV("health")

	float needToBeRestoredHealth = (currentHealth - healthBonus) * -1
	if needToBeRestoredHealth > 0
		targetActor.RestoreAV("health", needToBeRestoredHealth + 1)
	endif

	targetActor.ModAV("health", -healthBonus)
	targetActor.ModAV("magicka", -magickaBonus)
	targetActor.ModAV("stamina", -staminaBonus)

EndEvent

; ####### EVENTS END
; ==============================================================================================
