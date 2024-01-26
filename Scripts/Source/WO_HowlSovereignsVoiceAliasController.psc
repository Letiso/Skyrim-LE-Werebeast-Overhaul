Scriptname WO_HowlSovereignsVoiceAliasController extends ReferenceAlias  


; ==============================================================================================
;########## PROPERTIES 

WO_HowlSovereignsVoiceMaintenance[] Property SovereignsVoiceFollowers Auto

GlobalVariable Property WO_SovereignsVoiceCreaturesMaxCount Auto

;########## PROPERTIES INIT END
; ==============================================================================================


; ==============================================================================================
;########## EVENTS

;------------------------------------------------------------
; This is needed becuse of maintenance aliases can't catch OnPlayerLoadGame event by themselves
;------------------------------------------------------------
Event OnPlayerLoadGame()
	int _counter
	int _creaturesMaxCount = WO_SovereignsVoiceCreaturesMaxCount.Value as int

	while _counter != _creaturesMaxCount
		WO_HowlSovereignsVoiceMaintenance _currentAlias = SovereignsVoiceFollowers[_counter]

		if _currentAlias.GetActorRef()
			_currentAlias.HandlePlayerLoadGame()
		endif

		_counter += 1
	endwhile

EndEvent


;########## EVENTS END


;########## FUNCTIONS

;------------------------------------------------------------
Function HandleNecklaceEquipOrUnequip()
	;------------------------------------------------------------
	; Make effect duration infinite or reset it's duration
	;------------------------------------------------------------
	int _counter
	int _creaturesMaxCount = WO_SovereignsVoiceCreaturesMaxCount.Value as int

	while _counter != _creaturesMaxCount
		WO_HowlSovereignsVoiceMaintenance _currentAlias = SovereignsVoiceFollowers[_counter]

		if _currentAlias.GetActorRef()
			_currentAlias.HandleSpellRecast()
		endif

		_counter += 1
	endwhile

EndFunction


;------------------------------------------------------------
Bool Function TryToControlCreature(actor akTarget, float effectDuration)
	int _counter
	int _creaturesMaxCount = WO_SovereignsVoiceCreaturesMaxCount.Value as int

	;------------------------------------------------------------
	; If this creature is already under control, simply prolong effect's duration
	;------------------------------------------------------------
	while _counter != _creaturesMaxCount
		if SovereignsVoiceFollowers[_counter].GetActorRef() == akTarget
			SovereignsVoiceFollowers[_counter].HandleSpellRecast(effectDuration)
			return True
		endif

		_counter += 1
	endwhile

	_counter = 0
	;------------------------------------------------------------
	; If this creature isn't under control yet, we associate him with an any empty reference alias from WO_HowlSovereignsVoiceMaintenance array
	;------------------------------------------------------------
	while _counter != _creaturesMaxCount
		if SovereignsVoiceFollowers[_counter].ForceRefIfEmpty(akTarget)
			SovereignsVoiceFollowers[_counter].HandleSpellCast(effectDuration)
			return True
		endif

		_counter += 1
	endwhile

EndFunction

;########## FUNCTIONS END
; ==============================================================================================
