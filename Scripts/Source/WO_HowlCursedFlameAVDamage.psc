Scriptname WO_HowlCursedFlameAVDamage extends ActiveMagicEffect  


; ==============================================================================================
; ####### PROPERTIES

String Property ActorValueToDamage Auto

; ####### PROPERTIES END
; ==============================================================================================

; ==============================================================================================
; ####### INTERNAL DATA
actorValueInfo _AVtoDamageAVIF

actor _casterActor
actor _targetActor
float _damagePercentage

float _maxDamageToDeal
float _minDamageToDeal
float _damageToDeal

int _counter

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;-----------------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	_casterActor = akCaster
	_targetActor = akTarget

	;-----------------------------------------------------------------------
	; This effect is using at explosion's enchantment as well, so we haven't Caster actor reference at this case
	;-----------------------------------------------------------------------
	if _casterActor == None
		_casterActor = Game.GetPlayer()
	endif

	_damagePercentage = self.GetMagnitude()
	_AVtoDamageAVIF = ActorValueInfo.GetAVIByName(ActorValueToDamage)

	_maxDamageToDeal = (_casterActor.GetAV("UnarmedDamage") + _casterActor.GetLevel()) * 1
	_minDamageToDeal = (_casterActor.GetAV("UnarmedDamage") + _casterActor.GetLevel()) * 0.2

	DealDamage()

	RegisterForUpdate(1)

EndEvent


;-----------------------------------------------------------------------
Event OnUpdate()
	DealDamage()

EndEvent

;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS

;-----------------------------------------------------------------------
Function DealDamage()
	float _targetCurrentAVtoDamageValue = _AVtoDamageAVIF.GetCurrentValue(_targetActor)
	_damageToDeal = _targetCurrentAVtoDamageValue * _damagePercentage

	if _damageToDeal <= _minDamageToDeal
		_damageToDeal = _minDamageToDeal
	elseif _damageToDeal >= _maxDamageToDeal
		_damageToDeal = _maxDamageToDeal
	endif

	_targetActor.DamageAV(ActorValueToDamage, _damageToDeal)

EndFunction

;########## FUNCTIONS END
; ==============================================================================================
