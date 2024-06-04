Scriptname WO_DetectAllCreaturesSwitcher extends ActiveMagicEffect  


;########## PROPERTIES INIT

Actor Property PlayerRef Auto

GlobalVariable Property WO_DetectAllCreaturesIsActive Auto

Spell Property WO_WerewolfDetectLife Auto
Spell Property WO_WerewolfDetectLifeAb Auto

Sound Property UISkillsForward Auto
Sound Property UISkillsBackward Auto

;########## PROPERTIES INIT END


;########## EVENTS

;---------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	if !WO_DetectAllCreaturesIsActive.Value
		WO_DetectAllCreaturesIsActive.Value = 1

		PlayerRef.AddSpell(WO_WerewolfDetectLifeAb)
		
		UISkillsForward.Play(PlayerRef)
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

		UISkillsBackward.Play(PlayerRef)
		PlayerRef.DispelSpell(WO_WerewolfDetectLife)
		PlayerRef.RemoveSpell(WO_WerewolfDetectLifeAb)
	endif

EndFunction

;########## FUNCTIONS END