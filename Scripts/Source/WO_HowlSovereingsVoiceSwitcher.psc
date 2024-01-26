Scriptname WO_HowlSovereingsVoiceSwitcher extends ActiveMagicEffect


; ==============================================================================================
;########## PROPERTIES 

WO_HowlSovereignsVoiceAliasController Property AliasController Auto

;########## PROPERTIES INIT END
; ==============================================================================================


; ==============================================================================================
;########## EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	AliasController.TryToControlCreature(akTarget, self.GetDuration())

	;------------------------------------------------------------
	; HandleSpellCast() & HandleSpellRecast() functions of WO_HowlSovereignsVoiceMaintenance script 
	; is using this effect's duration, but effect itself doesn't needed no longer, so we have to stop it manually
	;------------------------------------------------------------
	self.Dispel()
	
EndEvent

;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS
;########## FUNCTIONS END
; ==============================================================================================
