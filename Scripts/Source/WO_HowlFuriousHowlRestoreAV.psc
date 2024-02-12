Scriptname WO_HowlFuriousHowlRestoreAV extends ActiveMagicEffect


; ==============================================================================================
; ####### PROPERTIES

String Property AVtoRestore Auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA
; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	actorValueInfo _restoringAVIF = ActorValueInfo.GetActorValueInfoByName(AVtoRestore)

	float _valueToRecover = _restoringAVIF.GetMaximumValue(akTarget) * GetMagnitude()
	akTarget.RestoreAV(AVtoRestore, _valueToRecover)

EndEvent
