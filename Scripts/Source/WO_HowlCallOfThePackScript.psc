Scriptname WO_HowlCallOfThePackScript extends ActiveMagicEffect


;########## PROPERTIES 

Spell Property WO_HowlWerewolfCallOfThePack1 Auto

WO_HowlCallOfThePackAliasController Property AliasController Auto

ActorBase Property BeastToSummon Auto

; GlobalVariable Property WO_NecklacePowerCallOfThePack Auto

;########## PROPERTIES INIT END


;########## EVENTS

;---------------------------
Event OnSpellCast(Form akSpell)
	;------------------------------------------------------------
	; for some reason, magic effect don't wanna to dispel itself when "Summon Creature" effect archetype is chosen
	;------------------------------------------------------------
	if akSpell == (WO_HowlWerewolfCallOfThePack1 as form)
		self.Dispel()
	endif

EndEvent


;---------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	AliasController.HandleSpellCast(akCaster, BeastToSummon)

EndEvent


;---------------------------
Event OnEffectFinish(actor akTarget, actor akCaster)
	AliasController.TurnOff()

EndEvent

;########## EVENTS END


;########## FUNCTIONS
;########## FUNCTIONS END
