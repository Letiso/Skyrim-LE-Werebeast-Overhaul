Scriptname WO_HowlCoolDownHandler extends ReferenceAlias  


; ==============================================================================================
;########## PROPERTIES

Actor Property PlayerRef Auto

Shout Property HowlShout1 Auto
Shout Property HowlShout2 Auto
Shout Property HowlShout3 Auto

Spell Property HowlSpell1 Auto
Spell Property HowlSpell2 Auto
Spell Property HowlSpell3 Auto

Message Property HowlWaitMessage Auto
Message Property HowlReadyMessage Auto

GlobalVariable Property MaxUsedChargesCountGlobal Auto
int Property MaxUsedChargesCount Auto
int Property CoolDown Auto

GlobalVariable Property TimeScale Auto

;########## PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA

float _gameTimeCoolDown
shout _thisHowl
int _usedChargesCount

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
;########## EVENTS

;------------------------------------------------------------
Event OnSpellCast(form akSpellCast)	
	if akSpellCast == HowlSpell3
		_thisHowl = HowlShout3
	elseif akSpellCast == HowlSpell2
		_thisHowl = HowlShout2
	elseif akSpellCast == HowlSpell1
		_thisHowl = HowlShout1
	else
		return
	endif

	_usedChargesCount += 1

	if _usedChargesCount == 1
		_gameTimeCoolDown = RealTimeSecondsToGameTimeHours(CoolDown)
		RegisterForSingleUpdateGameTime(_gameTimeCoolDown)
	endif

	if _usedChargesCount >= GetMaxUsedChargesCount()
		HowlWaitMessage.Show()
		PlayerRef.RemoveShout(_thisHowl)
	endif

EndEvent


;------------------------------------------------------------
Event OnUpdateGameTime()
	if _usedChargesCount > 0
		_usedChargesCount -= 1
	endif

	if _usedChargesCount > 0
		RegisterForSingleUpdateGameTime(_gameTimeCoolDown)
	endif

	TryToAddHowlAgain()

EndEvent

;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS

;------------------------------------------------------------
float Function HandlePerkGain(shout newHowl)
	_thisHowl = newHowl

	if _usedChargesCount < GetMaxUsedChargesCount()
		TryToAddHowlAgain()
	endif

EndFunction


;------------------------------------------------------------
Function TryToAddHowlAgain()
	if !PlayerRef.HasSpell(_thisHowl)
		PlayerRef.AddShout(_thisHowl)
		HowlReadyMessage.Show()

		if (PlayerRef.GetEquippedSpell(2) == None) && (PlayerRef.GetEquippedShout() == None)
			PlayerRef.EquipShout(_thisHowl)
		endif
	endif

EndFunction


;------------------------------------------------------------
int Function GetMaxUsedChargesCount()
	if MaxUsedChargesCountGlobal.Value > 0
		return MaxUsedChargesCountGlobal.Value as int
	else 
		return MaxUsedChargesCount
	endif

EndFunction


;------------------------------------------------------------
; Time scale tools
;------------------------------------------------------------
float Function RealTimeSecondsToGameTimeHours(float realtime)
	float scaledSeconds = realtime * TimeScale.Value
	
	return scaledSeconds / (60 * 60)

EndFunction

;########## FUNCTIONS END
; ==============================================================================================
