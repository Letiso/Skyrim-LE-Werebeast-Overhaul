Scriptname WO_FrostmoonRingBloodlust extends ObjectReference  


; ==============================================================================================
;########## PROPERTIES

Spell Property WO_FrostmoonRingBloodlustNegativeMagicEffect Auto

;########## PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA
; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
;########## EVENTS

;------------------------------------------------------------
Event OnEquipped(Actor akActor)
	if akActor == Game.GetPlayer()
		akActor.AddSpell(WO_FrostmoonRingBloodlustNegativeMagicEffect, false)
	endif

EndEvent


;------------------------------------------------------------
Event OnUnequipped(Actor akActor)
	if akActor == Game.GetPlayer()
		akActor.RemoveSpell(WO_FrostmoonRingBloodlustNegativeMagicEffect)
	endif

EndEvent

;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS
;########## FUNCTIONS END
; ==============================================================================================
