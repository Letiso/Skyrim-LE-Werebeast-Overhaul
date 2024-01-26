Scriptname WO_SupernaturalReflexesSwitcher extends ActiveMagicEffect  


; ==============================================================================================
; ####### PROPERTIES

WO_SupernaturalReflexesMaintenance Property SupernaturalReflexesMaintenance Auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	if SupernaturalReflexesMaintenance.isStillSwitching
		return
	endif

	if SupernaturalReflexesMaintenance.isSupernaturalReflexesActive
		UnregisterForUpdate()
		SupernaturalReflexesMaintenance.ToggleSupernaturalReflexes()
	else
		SupernaturalReflexesMaintenance.ToggleSupernaturalReflexes()
		RegisterForUpdate(1)
	endif

EndEvent


;------------------------------------------------------------
Event OnUpdate()
	bool usedChargesMaxCount = SupernaturalReflexesMaintenance.UseCharge()

	if usedChargesMaxCount
		UnregisterForUpdate()
	endif

EndEvent


;------------------------------------------------------------
Event OnDying(actor akKiller)
	if SupernaturalReflexesMaintenance.isSupernaturalReflexesActive
		UnregisterForUpdate()
		SupernaturalReflexesMaintenance.ToggleSupernaturalReflexes()
	endif
	
EndEvent

;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS
; ####### FUNCTIONS END
; ==============================================================================================
