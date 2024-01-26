Scriptname WO_HowlUnrelentingRoarNecklace extends ActiveMagicEffect  


; ==============================================================================================
; ####### PROPERTIES
; ####### PROPERTIES END
; ==============================================================================================

; ==============================================================================================
; ####### INTERNAL DATA
; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;-----------------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	actorValueInfo healthAVIF = ActorValueInfo.GetAVIByName("health")
	float _targetMaxHealth = healthAVIF.GetMaximumValue(akTarget)

	float _damagePercentage = self.GetMagnitude()
	float _maxDamageToDeal = (akCaster.GetAV("UnarmedDamage") + akCaster.GetLevel()) * 2

	float _damageToDeal = _targetMaxHealth * _damagePercentage
	if _damageToDeal > _maxDamageToDeal
		_damageToDeal = _maxDamageToDeal
	endif

	akTarget.DamageAv("health", _damageToDeal)

EndEvent

;########## EVENTS END

; ==============================================================================================
;########## FUNCTIONS
;########## FUNCTIONS END
; ==============================================================================================
