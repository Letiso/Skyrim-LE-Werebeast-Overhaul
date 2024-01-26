ScriptName WO_HowlCursedFlameSoulTrapFXScript extends ActiveMagicEffect
{Scripted effect for the Soul Trap Visual FX}


; ==============================================================================================
; ####### PROPERTIES

Quest Property PlayerWerewolfQuest Auto

ImageSpaceModifier property WO_CursedFlameSoulTrapTakingImod Auto
{IsMod applied when we trap a soul}

Sound property MAGMysticismSoulTrapCapture Auto
{Sound played when we trap a soul}

VisualEffect property WO_CursedFlameSoulTrapPVFX01 Auto
{Visual Effect on Target aiming at Caster}

VisualEffect property WO_CursedFlameSoulTrapPVFX02 Auto
{Visual Effect on Caster aming at Target}

EffectShader property WO_CursedFlameSoulTrapCastActFXS Auto
{Effect Shader on Caster during Soul trap}

EffectShader property WO_CursedFlameSoulTrapTargetActFXS Auto
{Effect Shader on Target during Soul trap}


; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA

actor _casterActor
actor _targetActor


; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;-----------------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	_casterActor = akCaster
	_targetActor = akTarget

EndEvent


;-----------------------------------------------------------------------
Event OnDying(actor akKiller)
	if _targetActor
		;------------------------------------------------------------
		; Play TrapSoundFX sound from caster
		;------------------------------------------------------------
		MAGMysticismSoulTrapCapture.Play(_casterActor)

		;------------------------------------------------------------
		; Apply isMod at full strength
		;------------------------------------------------------------
		WO_CursedFlameSoulTrapTakingImod.Apply()

		;------------------------------------------------------------
		; Play TargetVFX and aim them at the caster
		;------------------------------------------------------------
		WO_CursedFlameSoulTrapPVFX01.Play(_targetActor, 4.7, _casterActor)
		WO_CursedFlameSoulTrapPVFX02.Play(_casterActor, 5.9, _targetActor)

		;------------------------------------------------------------
		; Play Effect Shaders
		;------------------------------------------------------------
		WO_CursedFlameSoulTrapTargetActFXS.Play(_targetActor,2)
		WO_CursedFlameSoulTrapCastActFXS.Play(_casterActor,3)

		_casterActor.TrapSoul(_targetActor)

	endif

EndEvent

;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS
;########## FUNCTIONS END
; ==============================================================================================
