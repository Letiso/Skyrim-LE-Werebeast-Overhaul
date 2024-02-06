Scriptname WO_HowlCursedFlameMaintenance extends ReferenceAlias  


; ==============================================================================================
;########## PROPERTIES 

Actor Property PlayerRef Auto

Race Property MammothRace Auto

Spell Property WO_HowlWerewolfCursedFlameVisualEffect Auto
Spell Property WO_HowlWerewolfCursedFlameSKYUINotification Auto

GlobalVariable Property WO_NecklacePowerOfFlame Auto

GlobalVariable Property TimeScale auto

Explosion Property WO_CursedFireBallExp01 auto

EffectShader Property WO_GhostGreenFXShader auto
EffectShader Property WO_GhostDeathFXShader auto

Activator Property WO_DefaultAshPileGhost auto

;########## PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA

actor _actorRef
race _actorRace

string _displayName
bool _isFlashingGhost

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
;########## EVENTS

;------------------------------------------------------------
Event OnLoad()
	;------------------------------------------------------------
	; When creature is undloaded or/and loaded again (when location is changed or player loading his game, for exhample), 
	; this howl's visual effect is broking, so we have to reapply this effect
	;------------------------------------------------------------
	_actorRef.RemoveSpell(WO_HowlWerewolfCursedFlameVisualEffect)
	Utility.Wait(0.1)
	_actorRef.AddSpell(WO_HowlWerewolfCursedFlameVisualEffect)

	_actorRef.SetAlpha(0.3)

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


;-----------------------------------------------------------------------
Event OnHit(ObjectReference akAggressor, form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
	FlashGhost()
	
EndEvent


;-----------------------------------------------------------------------
Event OnAnimationEvent(ObjectReference akSource, string EventName)
	FlashGhost()
		
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
	_actorRef = GetActorRef()
	_actorRace = _actorRef.GetRace()

	;------------------------------------------------------------
	; making this creature your follower
	;------------------------------------------------------------
	_actorRef.SetPlayerTeammate(abCanDoFavor = false)
	_actorRef.IgnoreFriendlyHits(abIgnore = true)

	;------------------------------------------------------------
	; turn back actor's ghost from the ash pile
	;------------------------------------------------------------
	_actorRef.Resurrect()
	_actorRef.Enable()

	;------------------------------------------------------------
	; we have to move actor a little upper because of ash pile under it's feet breaking Y coordinate & creature looking incorrectly
	;------------------------------------------------------------
	_actorRef.SetPosition(_actorRef.GetPositionX(), _actorRef.GetPositionY(), _actorRef.GetPositionZ() + 100)

	;------------------------------------------------------------
	; we have to add this to hide NPC's appearing moment
	;------------------------------------------------------------
	_actorRef.PlaceAtMe(WO_CursedFireBallExp01)

	_actorRef.EvaluatePackage()

	;------------------------------------------------------------
	; player can see how long each creature still be under his control (except infinite effect durtion)
	;------------------------------------------------------------
	ActivateMagicEffectNotification(effectDuration)

	;------------------------------------------------------------
	; smoothly grade up actor's alpha channel 
	;------------------------------------------------------------
	_actorRef.SetAlpha(0.1)
	Utility.Wait(0.33)
	_actorRef.SetAlpha(0.2)
	Utility.Wait(0.33)
	_actorRef.SetAlpha(0.3)

	;------------------------------------------------------------
	; change this creature display name
	;------------------------------------------------------------
	_displayName = _actorRef.GetDisplayName()
	_actorRef.SetDisplayName(_displayName + " - " + PlayerRef.GetDisplayName())

	;------------------------------------------------------------
	; allow this creature race to open doors (except mammonth, because it's too big for the most of interiors if u ask me)
	;------------------------------------------------------------
	if _actorRace.CantOpenDoors() && (_actorRace != MammothRace)
		_actorRace.ClearCantOpenDoors()
	endif

	;------------------------------------------------------------
	; ghost flashing stuff
	;------------------------------------------------------------
	RegisterForAnimationEvent(_actorRef, "bowDraw")
	RegisterForAnimationEvent(_actorRef, "weaponSwing")
	RegisterForAnimationEvent(_actorRef, "arrowRelease")

EndFunction


;---------------------------
Function FlashGhost()
	if _isFlashingGhost
		return
	endif

	_isFlashingGhost = True
	
	_actorRef.setAlpha(0.5, True)
	utility.wait(1)
	_actorRef.setAlpha(0.3)
	
	_isFlashingGhost = False
	
EndFunction


;------------------------------------------------------------
Function TurnOff()
	UnregisterForUpdateGameTime()

	_isFlashingGhost = True ; to prevent FlashGhost() applying

	_actorRef.SetCriticalStage(_actorRef.CritStage_DisintegrateStart)

	WO_GhostGreenFXShader.Stop(_actorRef)
	WO_GhostDeathFXShader.Play(_actorRef)

	_actorRef.SetAlpha(0.0, True)

	;------------------------------------------------------------
	; this creature isn't under player's control no more, so we have to disable notification
	;------------------------------------------------------------
	DeactivateMagicEffectNotification()

	;------------------------------------------------------------
	; return to this creature's original state
	;------------------------------------------------------------
	_actorRef.SetDisplayName(_displayName)

	;------------------------------------------------------------
	; attach the ash pile
	;------------------------------------------------------------
	_actorRef.AttachAshPile(WO_DefaultAshPileGhost)
					
	Utility.wait(1.65)
	WO_GhostDeathFXShader.Stop(_actorRef)

	_actorRef.SetCriticalStage(_actorRef.CritStage_DisintegrateEnd)

	;------------------------------------------------------------
	; make this alias available for a new creature & clear the old one
	;------------------------------------------------------------
	self.Clear()

EndFunction


;------------------------------------------------------------
Function ActivateMagicEffectNotification(float effectDuration)
	;------------------------------------------------------------
	; Show how long this creature will be under the player's control & kill it after effect ends
	;------------------------------------------------------------
	WO_HowlWerewolfCursedFlameSKYUINotification.SetNthEffectDuration(0, effectDuration as int)
	Utility.Wait(0.1)
	WO_HowlWerewolfCursedFlameSKYUINotification.Cast(PlayerRef, PlayerRef)

EndFunction


;------------------------------------------------------------
Function DeactivateMagicEffectNotification()
	PlayerRef.DispelSpell(WO_HowlWerewolfCursedFlameSKYUINotification)

EndFunction

;########## FUNCTIONS END
; ==============================================================================================
