Scriptname WO_DetectAllCreaturesSwitcher extends ActiveMagicEffect  


;########## PROPERTIES INIT

Actor Property PlayerRef Auto

GlobalVariable Property WO_DetectAllCreaturesIsActive Auto

Spell Property ParentSpell Auto

Sound Property UISkillsForward Auto
Sound Property UISkillsBackward Auto

;########## PROPERTIES INIT END


;########## EVENTS

;---------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	if !WO_DetectAllCreaturesIsActive.Value
		WO_DetectAllCreaturesIsActive.Value = 1

		UISkillsForward.Play(akTarget)
	else
		SendModEvent("DetectAllCreaturesStop")
		DispelAbility()
		
	endif

EndEvent


;########## EVENTS END


;########## FUNCTIONS 

;------------------------
Function DispelAbility()
	if WO_DetectAllCreaturesIsActive.Value
		WO_DetectAllCreaturesIsActive.Value = 0

		UISkillsBackward.Play(GetTargetActor())
		GetTargetActor().DispelSpell(ParentSpell)
	endif

EndFunction

;########## FUNCTIONS END