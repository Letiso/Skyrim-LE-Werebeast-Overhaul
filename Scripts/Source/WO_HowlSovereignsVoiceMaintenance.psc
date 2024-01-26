Scriptname WO_HowlSovereignsVoiceMaintenance extends ReferenceAlias  


; ==============================================================================================
;########## PROPERTIES 

Actor Property PlayerRef Auto

Race Property MammothRace Auto

Spell Property WO_HowlWerewolfSovereignsVoiceVisualEffect Auto

Spell Property WO_HowlWerewolfSovereignsVoiceSKYUINotification Auto
WO_HowlSovereignsVoiceNotification Property WO_HowlWerewolfSovereignsVoiceSKYUINotificationActive Auto

Spell Property WO_HowlWerewolfSovereignsVoiceSKYUINotificationInfinite Auto

GlobalVariable Property WO_NecklacePowerSovereignsVoice Auto

; it's needed for cases when effect duration is infinite (necklace power turned on) 
; and now we have to make it limited again (necklace power turned off)
Float Property LastEffectDuration Auto



;########## PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA

actor _actorRef
race _actorRace

string _displayName

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
;########## EVENTS

;------------------------------------------------------------
Event OnLoad()
	;------------------------------------------------------------
	; When creature is undloaded or/and loaded again (when location is changed or player loading his game, for exhample), 
	; this howl's visual effect disappears, so we have to reapply this effect
	;------------------------------------------------------------
	_actorRef.RemoveSpell(WO_HowlWerewolfSovereignsVoiceVisualEffect)
	Utility.Wait(0.1)
	_actorRef.AddSpell(WO_HowlWerewolfSovereignsVoiceVisualEffect)

EndEvent


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


;------------------------------------------------------------
; Something like "OnEffectFinish" event
;------------------------------------------------------------
Event OnUpdateGameTime()
	TurnOff()

EndEvent


;------------------------------------------------------------
Event OnDying(actor akKiller)
	TurnOff()

EndEvent


;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS

;------------------------------------------------------------
Function HandlePlayerLoadGame()
	;------------------------------------------------------------
	; Most of animal races can't open doors by default, 
	; so controlled creatures can't follow you inside of most interiors exept caves without doors
	; SO we have to allow this creature's race to open doors 
	;*** This flag is reset on game reload*** 
	;------------------------------------------------------------
	if _actorRace.CantOpenDoors() && (_actorRace != MammothRace)
		_actorRace.ClearCantOpenDoors()
	endif

	;------------------------------------------------------------
	; If this creature and the player are in a different cells and it cannot reach you, 
	; (too far from each other or autosave after passing the door was loaded, 
	; that is a reason of a bug, when commanded creature not follow you thru the door)
	; teleport creature to the player
	;------------------------------------------------------------
	if _actorRef.GetParentCell() != PlayerRef.GetParentCell()
		_actorRef.MoveToPackageLocation()
	endif

EndFunction


;------------------------------------------------------------
Function HandleSpellCast(float effectDuration)
	;------------------------------------------------------------
	; Gatheting needed data
	;------------------------------------------------------------
	self.LastEffectDuration = effectDuration
	_actorRef = GetActorRef()
	_actorRace = _actorRef.GetRace()

	;------------------------------------------------------------
	; making this creature your follower
	;------------------------------------------------------------
	_actorRef.StopCombat()
	_actorRef.SetPlayerTeammate(abCanDoFavor = false)
	_actorRef.IgnoreFriendlyHits(abIgnore = true)
	_actorRef.EvaluatePackage()

	;------------------------------------------------------------
	; change this creature display name
	;------------------------------------------------------------
	_displayName = _actorRef.GetDisplayName()
	_actorRef.SetDisplayName(_displayName + " - " + PlayerRef.GetDisplayName())

	;------------------------------------------------------------
	; player can see how long each creature still be under his control (except infinite effect durtion)
	;------------------------------------------------------------
	ActivateMagicEffectNotification()

	;------------------------------------------------------------
	; allow this creature race to open doors (except mammonth, because it's too big for the most of interiors if u ask me)
	;------------------------------------------------------------
	if _actorRace.CantOpenDoors() && (_actorRace != MammothRace)
		_actorRace.ClearCantOpenDoors()
	endif

EndFunction


;------------------------------------------------------------
Function HandleSpellRecast(float effectDuration = 0.0)
	UnregisterForUpdateGameTime()

	;------------------------------------------------------------
	; Just for case
	;------------------------------------------------------------
	_actorRef.StopCombat()

	;------------------------------------------------------------
	; Gatheting needed data
	;------------------------------------------------------------
	if effectDuration > 0.0
		self.LastEffectDuration = effectDuration
	endif

	;------------------------------------------------------------
	; player can see how long each creature still be under his control (except infinite effect durtion)
	;------------------------------------------------------------
	WO_HowlWerewolfSovereignsVoiceSKYUINotificationActive.IsNotRecast = False
	ActivateMagicEffectNotification()

EndFunction


;------------------------------------------------------------
Function TurnOff()
	;------------------------------------------------------------
	; this creature isn't under player's control no more, so we have to disable notification
	;------------------------------------------------------------
	DeactivateMagicEffectNotification()

	;------------------------------------------------------------
	; return to this creature's original state
	;------------------------------------------------------------
	_actorRef.SetDisplayName(_displayName)
	_actorRef.SetPlayerTeammate(abTeammate = false)
	_actorRef.IgnoreFriendlyHits(abIgnore = false)

	;------------------------------------------------------------
	; make this alias available for a new creature
	;------------------------------------------------------------
	self.Clear()

EndFunction


;------------------------------------------------------------
Function ActivateMagicEffectNotification()
	;------------------------------------------------------------
	; disable effect from possible previous cast
	;------------------------------------------------------------
	DeactivateMagicEffectNotification()

	if WO_NecklacePowerSovereignsVoice.Value == 0
		;------------------------------------------------------------
		; Show how long this creature will be under the player's control
		;------------------------------------------------------------
		WO_HowlWerewolfSovereignsVoiceSKYUINotification.SetNthEffectDuration(0, self.LastEffectDuration as int)
		Utility.Wait(0.1)
		WO_HowlWerewolfSovereignsVoiceSKYUINotification.Cast(PlayerRef, PlayerRef)
	else
		PlayerRef.AddSpell(WO_HowlWerewolfSovereignsVoiceSKYUINotificationInfinite, false)

	endif

EndFunction


;------------------------------------------------------------
Function DeactivateMagicEffectNotification()
	PlayerRef.DispelSpell(WO_HowlWerewolfSovereignsVoiceSKYUINotification)
	PlayerRef.RemoveSpell(WO_HowlWerewolfSovereignsVoiceSKYUINotificationInfinite)

EndFunction

;########## FUNCTIONS END
; ==============================================================================================
