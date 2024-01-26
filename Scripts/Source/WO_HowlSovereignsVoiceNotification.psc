Scriptname WO_HowlSovereignsVoiceNotification extends ActiveMagicEffect  


; ==============================================================================================
;########## PROPERTIES 

WO_HowlSovereignsVoiceMaintenance Property BoundedAlias Auto
GlobalVariable Property WO_NecklacePowerSovereignsVoice Auto

Bool Property IsNotRecast Auto

;########## PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA


; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
;########## EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	BoundedAlias.WO_HowlWerewolfSovereignsVoiceSKYUINotificationActive = self

EndEvent


;------------------------------------------------------------
Event OnEffectFinish(actor akTarget, actor akCaster)
	if IsNotRecast
		BoundedAlias.TurnOff()
	endif

EndEvent

;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS
;########## FUNCTIONS END
; ==============================================================================================
