Scriptname WO_PredatorsFlairEffect extends ActiveMagicEffect  


;########## PROPERTIES INIT

Spell Property ParentSpell Auto

;########## PROPERTIES INIT END


;########## EVENTS

;---------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	RegisterForModEvent("DetectCorpsesStop", "OnDetectCorpsesStop")

EndEvent


;---------------------------
Event OnDetectCorpsesStop(string eventName, string strArg, float numArg, Form sender)
	GetTargetActor().DispelSpell(ParentSpell)

EndEvent

;########## EVENTS END


;########## FUNCTIONS 
;########## FUNCTIONS END