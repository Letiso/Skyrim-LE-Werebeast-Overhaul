Scriptname WO_HowlFuriousHowlNecklace extends ActiveMagicEffect


; ==============================================================================================
; ####### PROPERTIES

Spell Property WO_HowlWerewolfFuriousHowl1 Auto

GlobalVariable Property WO_FuriousHowlDamageResistCombo auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA

int _lastCombo

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnSpellCast(Form akSpell)
	;------------------------------------------------------------
	; for some reason, magic effect don't wanna to dispel itself when "Value Modifier" effect archetype is chosen
	;------------------------------------------------------------
	if akSpell == (WO_HowlWerewolfFuriousHowl1 as form)
		self.Dispel()
	endif

EndEvent


;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor AkCaster)
	_lastCombo = 0

	RegisterForUpdate(2)
	
EndEvent


;------------------------------------------------------------
Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
	WO_FuriousHowlDamageResistCombo.Value += 1

EndEvent


;------------------------------------------------------------
Event OnUpdate()
	if _lastCombo == WO_FuriousHowlDamageResistCombo.Value
		WO_FuriousHowlDamageResistCombo.Value = 0
		_lastCombo = 0
	else
		_lastCombo = WO_FuriousHowlDamageResistCombo.Value as int
	endif

	
EndEvent


;------------------------------------------------------------
Event OnEffectFinish(actor akTarget, actor AkCaster)
	WO_FuriousHowlDamageResistCombo.Value = 0
	
EndEvent

; ####### EVENTS END
; ==============================================================================================
