Scriptname WO_SupernaturalReflexesMaintenance extends ReferenceAlias  


; ==============================================================================================
; ####### PROPERTIES

Actor Property PlayerRef Auto

Spell Property WO_SupernaturalReflexes Auto
Spell Property WO_SupernaturalReflexesSlowTime Auto
Spell Property WO_SupernaturalReflexesSlowTimeHitEffectArt Auto

Sound Property MAGPowersSupernaturalReflexesInMarker Auto
Sound Property MAGPowersSupernaturalReflexesOutMarker Auto

ShaderParticleGeometry property SlowTimeParticles02 auto

ImageSpaceModifier Property WO_SupernaturalReflexesIntroImod Auto
ImageSpaceModifier Property WO_SupernaturalReflexesMainImod Auto
ImageSpaceModifier Property WO_SupernaturalReflexesOutroImod Auto

int Property MaxUsedChargesCount Auto
GlobalVariable Property TimeScale auto

Message Property WO_SupernaturalReflexesWaitMessage Auto
Message Property WO_SupernaturalReflexesReadyMessage Auto

Bool Property isSupernaturalReflexesActive Auto
Bool Property isStillSwitching Auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA

; time to wait for playing intro before main fx will be applyed
float fxDelay = 0.2

; time it takes for the particles to fade in
float fadeInTime = 0.1
; time it takes for the particles to fade out
float fadeOutTime = 0.1

int _usedChargesCount

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

; Charges restoring
;------------------------------------------------------------
Event OnUpdate()
	if !isSupernaturalReflexesActive && (_usedChargesCount > 0)
		_usedChargesCount -= 1
		
		if _usedChargesCount == 0
			WO_SupernaturalReflexesReadyMessage.Show()
			UnregisterForUpdate()
		endif
		
	else
		UnregisterForUpdate()
	endif
	
EndEvent


;------------------------------------------------------------
Event OnRaceSwitchComplete()
	if isSupernaturalReflexesActive
		ToggleSupernaturalReflexes()
	endif

EndEvent


; ####### EVENTS END
; ==============================================================================================


; ==============================================================================================
; ####### FUNCTIONS

;------------------------------------------------------------
Function ToggleSupernaturalReflexes()
	isSupernaturalReflexesActive = !isSupernaturalReflexesActive
	isStillSwitching = True

	PlaySound()
	WO_SupernaturalReflexesSlowTimeHitEffectArt.Cast(PlayerRef)

	; _ChargesRestoringPeriod = RealTimeSecondsToHours(1)

	if isSupernaturalReflexesActive
		EnableSupernaturalReflexes()
	else
		DisableSupernaturalReflexes()
	endif
	
	isStillSwitching = False
	
EndFunction


;------------------------------------------------------------
Function PlaySound()
	if isSupernaturalReflexesActive
		MAGPowersSupernaturalReflexesInMarker.Play(PlayerRef)
	else
		MAGPowersSupernaturalReflexesOutMarker.Play(PlayerRef)
	endif
	
EndFunction


;------------------------------------------------------------
Function EnableSupernaturalReflexes()
	WO_SupernaturalReflexesSlowTime.Cast(PlayerRef)
	SlowTimeParticles02.remove(FadeOutTime)		; remove ShaderParticleGeometry
	SlowTimeParticles02.apply(FadeInTime) 		; apply ShaderParticleGeometry

	WO_SupernaturalReflexesIntroImod.Apply()
	Utility.Wait(fxDelay)
	WO_SupernaturalReflexesIntroImod.PopTo(WO_SupernaturalReflexesMainImod)

EndFunction


;------------------------------------------------------------
Function DisableSupernaturalReflexes()
	WO_SupernaturalReflexesMainImod.PopTo(WO_SupernaturalReflexesOutroImod)

	PlayerRef.DispelSpell(WO_SupernaturalReflexesSlowTime)
	SlowTimeParticles02.remove(FadeOutTime)		; remove ShaderParticleGeometry

	PlayerRef.DispelSpell(WO_SupernaturalReflexes)
	StartChargesRestoring()

EndFunction


;------------------------------------------------------------
Function StartChargesRestoring()
	RegisterForUpdate(1)
	
EndFunction


; Charges consumption
;------------------------------------------------------------
Bool Function UseCharge()
	_usedChargesCount += 1

	if _usedChargesCount >= MaxUsedChargesCount
		WO_SupernaturalReflexesWaitMessage.Show()
		ToggleSupernaturalReflexes()

		return True
	endif
	
EndFunction

; ####### FUNCTIONS END
; ==============================================================================================
