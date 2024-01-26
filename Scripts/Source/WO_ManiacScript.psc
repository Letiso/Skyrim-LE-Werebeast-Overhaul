Scriptname WO_ManiacScript extends ActiveMagicEffect  


; ==============================================================================================
; ####### PROPERTIES

Actor Property PlayerRef Auto
Race Property WerewolfBeastRace Auto

GlobalVariable Property WO_FeedingCounter Auto
Message Property WO_Maniac50VictimsMessage Auto

Spell Property WO_PerkManiac Auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	RegisterForModEvent("WerewolfFeeding", "OnWerewolfFeeding")

EndEvent


;------------------------------------------------------------
Event OnWerewolfFeeding(string eventName, string strArg, float numArg, Form sender)
	if WO_FeedingCounter.Value >= 50
		; reset feeding counter
		WO_FeedingCounter.Value -= 50
		
		; incrise player's max health & stamina as reward for 50 victims
		PlayerRef.ModAV("health", 5)
		PlayerRef.ModAV("stamina", 5)
		
		; notify about that
		WO_Maniac50VictimsMessage.Show()
	endif
	
EndEvent


;-----------------------------------
Event OnRaceSwitchComplete()
	if PlayerRef.GetRace() != WerewolfBeastRace
		PlayerRef.RemoveSpell(WO_PerkManiac)
		self.Dispel()
	endif
	
EndEvent

; ####### EVENTS END
; ==============================================================================================
