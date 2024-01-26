Scriptname WO_HowlCursedFlameAliasController extends ReferenceAlias  


; ==============================================================================================
;########## PROPERTIES 

WO_HowlCursedFlameMaintenance[] Property CursedFlameFollowers Auto

Int Property CreaturesMaxCount Auto

;########## PROPERTIES INIT END
; ==============================================================================================


; ==============================================================================================
;########## EVENTS

;------------------------------------------------------------
; This is needed becuse of maintenance aliases can't catch OnPlayerLoadGame event by themselves
;------------------------------------------------------------
Event OnPlayerLoadGame()
	int _counter

	while _counter != CreaturesMaxCount
		WO_HowlCursedFlameMaintenance _currentAlias = CursedFlameFollowers[_counter]

		if _currentAlias.GetActorRef()
			_currentAlias.HandlePlayerLoadGame()
		endif

		_counter += 1
	endwhile

EndEvent


;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS

;------------------------------------------------------------
Bool Function TryToControlCreature(actor akTarget, float effectDuration)
	int _counter
	while _counter != CreaturesMaxCount
		if CursedFlameFollowers[_counter].ForceRefIfEmpty(akTarget)
			CursedFlameFollowers[_counter].HandleSpellCast(effectDuration)

			return True
		endif

		_counter += 1
	endwhile

EndFunction


;------------------------------------------------------------
Function DispelCursedFlame()
	int _counter

	while _counter != CreaturesMaxCount
		WO_HowlCursedFlameMaintenance _currentAlias = CursedFlameFollowers[_counter]

		if _currentAlias.GetActorRef()
			_currentAlias.TurnOff()
		endif

		_counter += 1
	endwhile

EndFunction

;########## FUNCTIONS END
; ==============================================================================================
