Scriptname WO_AcrobatScript extends ActiveMagicEffect


;########## PROPERTIES INIT

Race Property WerewolfBeastRace Auto

Spell Property WO_PerkAcrobat1 Auto
Spell Property WO_PerkAcrobat2 Auto

;########## PROPERTIES INIT END

actor targetActor

;########## EVENTS

;-----------------------------------
Event OnEffectStart(Actor akTarget, Actor akCaster)
	targetActor = akTarget
	Game.SetGameSettingFloat("fJumpHeightMin", GetMagnitude())	
	
EndEvent

;-----------------------------------
Event OnRaceSwitchComplete()
	Debug.Notification(targetActor.GetRace())

	if targetActor.GetRace() != WerewolfBeastRace
		targetActor.RemoveSpell(WO_PerkAcrobat1)
		targetActor.RemoveSpell(WO_PerkAcrobat2)
	endif
EndEvent


;-----------------------------------
Event OnEffectFinish(Actor akTarget, Actor akCaster)	
	Game.SetGameSettingFloat("fJumpHeightMin", 76.00)
	
EndEvent

;########## EVENTS END
