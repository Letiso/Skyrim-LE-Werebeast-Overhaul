Scriptname WO_HowlCallOfThePackScript extends ActiveMagicEffect


; ==============================================================================================
;########## PROPERTIES 

Spell Property WO_HowlWerewolfCallOfThePack1 Auto

WO_HowlCallOfThePackAliasController Property AliasController Auto

ActorBase Property BeastToSummon Auto

Int Property MaxCreaturesCount Auto

;########## PROPERTIES INIT END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA

int _deadCreatures

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
;########## EVENTS

;------------------------------------------------------------
Event OnSpellCast(Form akSpell)
	;------------------------------------------------------------
	; for some reason, magic effect don't wanna to dispel itself on recast when "Summon Creature" effect archetype is chosen
	;------------------------------------------------------------
	if akSpell == (WO_HowlWerewolfCallOfThePack1 as form)
		self.Dispel()
	endif

EndEvent


;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	AliasController.HowlMagicEffect = self
	AliasController.HandleSpellCast(akCaster, BeastToSummon)

EndEvent


;------------------------------------------------------------
Event OnEffectFinish(actor akTarget, actor akCaster)
	AliasController.TurnOff()

EndEvent

;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS

;------------------------------------------------------------
; This need to dispel magic effect when all summoned creatures is dead
;------------------------------------------------------------
Function HandleCreatureDeath()
	_deadCreatures += 1

	if _deadCreatures >= MaxCreaturesCount
		self.Dispel()
	endif

EndFunction

;########## FUNCTIONS END
; ==============================================================================================
