Scriptname WO_HowlCloakOfShadowsNecklace extends ObjectReference


; ==============================================================================================
;########## PROPERTIES 

Actor Property PlayerRef Auto
Race Property WerewolfBeastRace Auto

GlobalVariable Property WO_NecklacePowerOfShadows Auto

;########## PROPERTIES INIT END
; ==============================================================================================


; ==============================================================================================
;########## EVENTS


;------------------------------------------------------------
Event OnEquipped(Actor akActor)
	race _playerRace = PlayerRef.GetRace()
	bool _necklacePowerIsTurnedOff = WO_NecklacePowerOfShadows.Value == 0

	if (akActor == PlayerRef) && _necklacePowerIsTurnedOff
		WO_NecklacePowerOfShadows.Value = 1
	endif

EndEvent


;------------------------------------------------------------
Event OnUnEquipped(Actor akActor)
	race _playerRace = PlayerRef.GetRace()

	if (akActor == PlayerRef) && (_playerRace != WerewolfBeastRace)
		WO_NecklacePowerOfShadows.Value = 0
	endif

EndEvent

;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS
;########## FUNCTIONS END
; ==============================================================================================
