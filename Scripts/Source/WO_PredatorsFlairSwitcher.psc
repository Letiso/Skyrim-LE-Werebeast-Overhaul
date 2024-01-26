Scriptname WO_PredatorsFlairSwitcher extends ActiveMagicEffect  


;########## PROPERTIES INIT

GlobalVariable Property WO_PredatorsFlairIsActive Auto

Spell Property ParentSpell Auto

Sound Property UISkillsForward Auto
Sound Property UISkillsBackward Auto

;########## PROPERTIES INIT END


;########## EVENTS

;---------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	if !WO_PredatorsFlairIsActive.Value
		WO_PredatorsFlairIsActive.Value = 1

		UISkillsForward.Play(akTarget)
	else
		SendModEvent("DetectCorpsesStop")
		DispelAbility()
		
	endif

EndEvent


;----------------------------
Event OnRaceSwitchComplete()
	DispelAbility()

EndEvent

;########## EVENTS END


;########## FUNCTIONS 

;------------------------
Function DispelAbility()
	if WO_PredatorsFlairIsActive.Value
		WO_PredatorsFlairIsActive.Value = 0

		UISkillsBackward.Play(GetTargetActor())
		GetTargetActor().DispelSpell(ParentSpell)
	endif

EndFunction

;########## FUNCTIONS END