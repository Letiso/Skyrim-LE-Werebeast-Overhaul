Scriptname WO_HowlCursedFlameDisintegration extends ActiveMagicEffect  
{Scripted effect for on death ash pile}


; ==============================================================================================
; ####### PROPERTIES

Float property fDelay = 0.75 Auto
									{time to wait before Spawning Ash Pile}
Float property fDelayEnd = 1.65 Auto
									{time to wait before Removing Base Actor}
Activator property WO_DefaultAshPile1 Auto
									{The object we use as a pile.}
EffectShader property WO_CursedFireFXShader Auto
									{The Effect Shader we want.}
EffectShader property WO_CursedFlameDisintegrate01FXS Auto
									{The Effect Shader to disintagrate target.}
FormList Property DisintegrationMainImmunityList Auto
									{If the target is in this list, they will not be disintegrated.}
Explosion Property WO_CursedFireBallExp01 Auto

GlobalVariable Property WO_NecklacePowerOfFlame Auto

Spell Property WO_HowlWerewolfCursedFlameNecklace Auto

Spell Property PlayerWerewolfFeedVictimSpell Auto

WO_HowlCursedFlameAliasController Property AliasController Auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA

actor _targetActor
actor _casterActor
race _targetActorRace

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;-----------------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	_targetActor = akTarget
	_targetActorRace = _targetActor.GetRace()
	
	_casterActor = akCaster

EndEvent


;-----------------------------------------------------------------------
Event OnDying(actor akKiller)
	;------------------------------------------------------------
	; This will toggle something like 'HasBeenEaten' actor 'flag', so player cannot eat this actor again even after resurrection
	;------------------------------------------------------------
	_targetActor.SetAV("WerewolfPerks", 1)

	;------------------------------------------------------------
	; This will toggle 'HasBeenEaten' actor 'flag' & gave to player a feeding bonus
	;------------------------------------------------------------
	PlayerWerewolfFeedVictimSpell.Cast(_casterActor, _targetActor)

	;------------------------------------------------------------
	; make an explosion
	;------------------------------------------------------------
	_targetActor.PlaceAtMe(WO_CursedFireBallExp01)

	;------------------------------------------------------------
	; actually disintegrating actor
	;------------------------------------------------------------
	if !DisintegrationMainImmunityList.HasForm(_targetActorRace)
		_targetActor.SetCriticalStage(_targetActor.CritStage_DisintegrateStart)

		WO_CursedFlameDisintegrate01FXS.Play(_targetActor)

		Utility.Wait(fDelay)     
		_targetActor.AttachAshPile(WO_DefaultAshPile1)

		Utility.Wait(fDelayEnd)
		WO_CursedFlameDisintegrate01FXS.Stop(_targetActor)

		_targetActor.SetAlpha (0.0, True)
		_targetActor.SetCriticalStage(_targetActor.CritStage_DisintegrateEnd)

		if WO_NecklacePowerOfFlame.Value
			_targetActor.RemoveFromAllFactions()
			AliasController.TryToControlCreature(_targetActor, WO_HowlWerewolfCursedFlameNecklace.GetNthEffectDuration(0))
		endif

	endif

	;------------------------------------------------------------
	; this spell marked as 'no death dispel', so we have to do this manually right here
	;------------------------------------------------------------
	self.Dispel()

EndEvent

;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS
;########## FUNCTIONS END
; ==============================================================================================
