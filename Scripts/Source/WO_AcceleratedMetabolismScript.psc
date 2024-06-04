Scriptname WO_AcceleratedMetabolismScript extends ActiveMagicEffect  


; ==============================================================================================
; ####### PROPERTIES

Spell Property WO_AcceleratedMetabolism Auto
Spell Property WO_AcceleratedMetabolismSecondMagicEffect Auto
Sound Property MAGPowerRacialHistskin Auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA

actor _actorRef

actorValueInfo _healthAVIF
actorValueInfo _staminaAVIF

float _damageToStamina
float _healthToRecover

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	_actorRef = akTarget
	
	WO_AcceleratedMetabolismSecondMagicEffect.Cast(_actorRef, _actorRef)

	MAGPowerRacialHistskin.Play(_actorRef)

	_healthAVIF = ActorValueInfo.GetActorValueInfoByName("health")
	_staminaAVIF = ActorValueInfo.GetActorValueInfoByName("stamina")

	_damageToStamina = _staminaAVIF.GetMaximumValue(_actorRef) / 75
	_healthToRecover = _damageToStamina * 2
	; / 2

	RegisterForUpdate(0.08)

EndEvent


;------------------------------------------------------------
Event OnUpdate()
	bool _healthIsNotFullyRecovered = _healthAVIF.GetCurrentValue(_actorRef) < _healthAVIF.GetMaximumValue(_actorRef)
	bool _staminaHasLeft = _staminaAVIF.GetCurrentValue(_actorRef) >= _damageToStamina

	if _healthIsNotFullyRecovered && _staminaHasLeft
		_actorRef.DamageAV("stamina",_damageToStamina)
		_actorRef.RestoreAV("health",_healthToRecover)
	else
		_actorRef.DispelSpell(WO_AcceleratedMetabolism)
		_actorRef.DispelSpell(WO_AcceleratedMetabolismSecondMagicEffect)
	endif

EndEvent


;------------------------------------------------------------
Event OnDying(actor akKiller)
	_actorRef.DispelSpell(WO_AcceleratedMetabolism)
	_actorRef.DispelSpell(WO_AcceleratedMetabolismSecondMagicEffect)

EndEvent

; ####### EVENTS END
; ==============================================================================================


; ==============================================================================================
; ####### FUNCTIONS
; ####### FUNCTIONS END
; ==============================================================================================
