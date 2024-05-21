Scriptname WO_HowlCallOfThePackMaintenance extends ReferenceAlias  


; ==============================================================================================
;########## PROPERTIES 

Actor Property PlayerRef Auto

;########## PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA

actor _actorRef
string _displayName

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
;########## EVENTS

;------------------------------------------------------------
; A little friendly fire fix
;------------------------------------------------------------
Event OnCombatStateChanged(actor akTarget, int aeCombatState)
	if aeCombatState > 0
		if akTarget == PlayerRef
			_actorRef.StopCombat()
		elseif akTarget.IsPlayerTeammate()
			akTarget.StopCombat()
			_actorRef.StopCombat()
		endif
	endif
	
EndEvent

;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS

;------------------------------------------------------------
Function HandleSpellCast(actor akCaster, actor akBeast)
	;------------------------------------------------------------
	; Gatheting needed data
	;------------------------------------------------------------
	_actorRef = GetActorRef()

	;------------------------------------------------------------
	; making this creature your follower
	;------------------------------------------------------------
	_actorRef.SetPlayerTeammate(abCanDoFavor = false)
	_actorRef.IgnoreFriendlyHits(abIgnore = true)

	;------------------------------------------------------------
	; change this creature display name
	;------------------------------------------------------------
	_displayName = _actorRef.GetDisplayName()
	_actorRef.SetDisplayName(_displayName + " - " + akCaster.GetDisplayName())

EndFunction


;------------------------------------------------------------
Function TurnOff()
	_actorRef.Kill()

	self.Clear()

EndFunction

;########## FUNCTIONS END
; ==============================================================================================
