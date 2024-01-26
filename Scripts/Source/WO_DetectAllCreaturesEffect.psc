Scriptname WO_DetectAllCreaturesEffect extends ActiveMagicEffect  


;########## PROPERTIES INIT

Spell Property ParentSpell Auto

;########## PROPERTIES INIT END


;########## EVENTS

;---------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	RegisterForModEvent("DetectAllCreaturesStop", "OnDetectAllCreaturesStop")

EndEvent


;---------------------------------------------------------------------------------------
Event OnDetectAllCreaturesStop(string eventName, string strArg, float numArg, Form sender)
	GetTargetActor().DispelSpell(ParentSpell)

EndEvent

;########## EVENTS END


;########## FUNCTIONS 
;########## FUNCTIONS END