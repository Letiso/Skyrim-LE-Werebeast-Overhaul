Scriptname WO_HowlSovereingsVoiceNecklace extends ObjectReference


; ==============================================================================================
;########## PROPERTIES 

Actor Property PlayerRef Auto
Race Property WerewolfBeastRace Auto

WO_HowlSovereignsVoiceAliasController Property AliasController Auto

GlobalVariable Property WO_NecklacePowerOfSovereign Auto

;########## PROPERTIES INIT END
; ==============================================================================================


; ==============================================================================================
;########## EVENTS


;------------------------------------------------------------
Event OnEquipped(Actor akActor)
	race _playerRace = PlayerRef.GetRace()
	bool _necklacePowerIsTurnedOff = WO_NecklacePowerOfSovereign.Value == 0

	if (akActor == PlayerRef) && _necklacePowerIsTurnedOff
		WO_NecklacePowerOfSovereign.Value = 1

		AliasController.HandleNecklaceEquipOrUnequip()
	endif

EndEvent


;------------------------------------------------------------
Event OnUnEquipped(Actor akActor)
	race _playerRace = PlayerRef.GetRace()

	if (akActor == PlayerRef) && (_playerRace != WerewolfBeastRace)
		WO_NecklacePowerOfSovereign.Value = 0

		AliasController.HandleNecklaceEquipOrUnequip()
	endif

EndEvent

;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS
;########## FUNCTIONS END
; ==============================================================================================
