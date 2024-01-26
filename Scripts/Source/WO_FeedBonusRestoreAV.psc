Scriptname WO_FeedBonusRestoreAV extends ActiveMagicEffect  


; ==============================================================================================
; ####### PROPERTIES

Perk Property DLC1GorgingPerk Auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA

float _actorValueToRestoreMult

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	actorValueInfo _healthAVIF = ActorValueInfo.GetActorValueInfoByName("health")
	actorValueInfo _staminaAVIF = ActorValueInfo.GetActorValueInfoByName("stamina")

	if akTarget.HasPerk(DLC1GorgingPerk)
		_actorValueToRestoreMult = 0.3
	else
		_actorValueToRestoreMult = 0.15
	endif

	float _healthToRestore = _healthAVIF.GetMaximumValue(akTarget) * _actorValueToRestoreMult
	float _staminaToRestore = _staminaAVIF.GetMaximumValue(akTarget) * _actorValueToRestoreMult

	akTarget.RestoreAV("health", _healthToRestore)
	akTarget.RestoreAV("stamina", _staminaToRestore)

EndEvent

; ####### EVENTS END
; ==============================================================================================


; ==============================================================================================
; ####### FUNCTIONS
; ####### FUNCTIONS END
; ==============================================================================================
