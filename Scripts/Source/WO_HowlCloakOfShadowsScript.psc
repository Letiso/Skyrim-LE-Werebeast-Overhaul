Scriptname WO_HowlCloakOfShadowsScript extends ActiveMagicEffect


;########## PROPERTIES 
;########## PROPERTIES INIT END


;########## EVENTS

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
