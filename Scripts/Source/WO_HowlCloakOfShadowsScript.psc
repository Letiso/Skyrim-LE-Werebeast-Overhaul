Scriptname WO_HowlCloakOfShadowsScript extends ActiveMagicEffect


;########## PROPERTIES 

Spell Property WO_HowlWerewolfCloakOfShadows1 Auto

; GlobalVariable Property WO_NecklacePowerCallOfThePack Auto

;########## PROPERTIES INIT END


;########## EVENTS

;---------------------------
Event OnSpellCast(Form akSpell)
	;------------------------------------------------------------
	; for some reason, magic effect don't wanna to dispel itself when "Value Modifier" effect archetype is chosen
	;------------------------------------------------------------
	if akSpell == (WO_HowlWerewolfCloakOfShadows1 as form)
		self.Dispel()
	endif

EndEvent


;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	akTarget.SetAlpha(0.3)

EndEvent


;------------------------------------------------------------
Event OnEffectFinish(actor akTarget, actor akCaster)
	akTarget.SetAlpha(1)

EndEvent

;########## EVENTS END


;########## FUNCTIONS
;########## FUNCTIONS END