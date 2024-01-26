Scriptname WO_AdrenalineScript extends ActiveMagicEffect  


; ==============================================================================================
; ####### PROPERTIES

Race Property WerewolfBeastRace Auto

GlobalVariable Property WO_AdrenalineIsActive  Auto  

Sound Property MAGStandingStoneActivateMarker Auto
Sound Property UIHealthHeartbeatBLP Auto

ImageSpaceModifier Property WO_AdrenalineIntroImod Auto
ImageSpaceModifier Property WO_AdrenalineMainImod Auto
ImageSpaceModifier Property WO_AdrenalineOutroImod Auto

Spell Property WO_PerkAdrenaline Auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA

actor targetActor

actorValueInfo healthAVIF
float healthPercentage

bool stillSwitching
float fxDelay = 0.83

bool heartbeatSoundIsActive
int heartbeatSoundInstance

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	targetActor = akTarget
	healthAVIF = ActorValueInfo.GetAVIByName("health")

	; start tracking
	RegisterForUpdate(1)

EndEvent


;------------------------------------------------------------
Event OnUpdate()
	healthPercentage = healthAVIF.GetCurrentValue(targetActor) / healthAVIF.GetMaximumValue(targetActor)

	if (healthPercentage < 0.33) && (healthPercentage > 0)
		if !WO_AdrenalineIsActive.Value
			EnableAdrenaline()
		endif

		if healthPercentage > 0.135
			PlayHeartbeatSound()
		else
			StopHeartbeatSound()
		endif

	elseif WO_AdrenalineIsActive.Value
		DisableAdrenaline()
	endif

EndEvent


;-----------------------------------
Event OnRaceSwitchComplete()
	if targetActor.GetRace() != WerewolfBeastRace
		targetActor.RemoveSpell(WO_PerkAdrenaline)
		Dispel()
	endif
EndEvent


;------------------------------------------------------------
Event OnDying(actor akKiller)
	Dispel()

EndEvent


;------------------------------------------------------------
Event OnEffectFinish(actor akTarget, actor akCaster)
	UnregisterForUpdate()
	
	while stillSwitching
		Utility.Wait(0.2)
	endwhile

	if WO_AdrenalineIsActive.Value
		DisableAdrenaline()
	endif

EndEvent

; ####### EVENTS END
; ==============================================================================================


; ==============================================================================================
; ####### FUNCTIONS


;------------------------------------------------------------
Function EnableAdrenaline()
	if stillSwitching
		return	; don't do anything
	endif

	WO_AdrenalineIsActive.Value = 1

	stillSwitching = True
	MAGStandingStoneActivateMarker.Play(targetActor)

	WO_AdrenalineIntroImod.Apply()
	Utility.Wait(fxDelay)

	WO_AdrenalineIntroImod.PopTo(WO_AdrenalineMainImod)

	stillSwitching = False

EndFunction


;------------------------------------------------------------
Function DisableAdrenaline()
	if stillSwitching
		return	; don't do anything
	endif

	WO_AdrenalineIsActive.Value = 0

	stillSwitching = True

	StopHeartbeatSound()
	MAGStandingStoneActivateMarker.Play(targetActor)

	WO_AdrenalineMainImod.PopTo(WO_AdrenalineOutroImod)

	stillSwitching = False

EndFunction


;------------------------------------------------------------
Function PlayHeartbeatSound()
	if !heartbeatSoundIsActive
		heartbeatSoundIsActive = True
		heartbeatSoundInstance = UIHealthHeartbeatBLP.Play(targetActor)
	endif
EndFunction


;------------------------------------------------------------
Function StopHeartbeatSound()
	if heartbeatSoundIsActive
		heartbeatSoundIsActive = False
		Sound.StopInstance(heartbeatSoundInstance)
	endif
EndFunction

; ####### FUNCTIONS END
; ==============================================================================================
