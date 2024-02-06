Scriptname WO_HowlCallOfThePackAliasController extends ReferenceAlias  


; ==============================================================================================
;########## PROPERTIES 

WO_HowlCallOfThePackMaintenance[] Property CallOfThePackFollowers Auto

GlobalVariable Property WO_NecklacePowerOfPack Auto

Int Property CreaturesMaxCount Auto

;########## PROPERTIES INIT END
; ==============================================================================================


; ==============================================================================================
;########## EVENTS
;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS

;------------------------------------------------------------
Function HandleSpellCast(actor akCaster, actorBase akBeastToSummon)
	int _counter
	int _maxCounter = CreaturesMaxCount + (WO_NecklacePowerOfPack.Value as int)

	while _counter != _maxCounter
		actor _beastRef = akCaster.placeAtMe(akBeastToSummon) as actor
		_beastRef.SetAlpha(0.0)

		while !CallOfThePackFollowers[_counter].ForceRefIfEmpty(_beastRef)
			Utility.Wait(0.1)
		endwhile

		CallOfThePackFollowers[_counter].HandleSpellCast(akCaster, _beastRef)

		_counter += 1
	endwhile

EndFunction


;------------------------------------------------------------
Function TurnOff()
	int _counter
	int _maxCounter = CreaturesMaxCount + (WO_NecklacePowerOfPack.Value as int)

	while _counter != _maxCounter
		CallOfThePackFollowers[_counter].TurnOff()
		_counter += 1
	endwhile

EndFunction

;########## FUNCTIONS END
; ==============================================================================================
