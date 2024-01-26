Scriptname WO_BeastPowerCooldownHandler extends ReferenceAlias  


; ==============================================================================================
;########## PROPERTIES

Actor Property PlayerRef Auto

Spell Property BeastPower Auto

Message Property BeastPowerWaitMessage Auto
Message Property BeastPowerReadyMessage Auto

int Property MaxUsedChargesCount Auto
int Property Cooldown Auto

GlobalVariable Property TimeScale auto

;########## PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA

int _usedChargesCount

float _gameTimeCoolDown

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
;########## EVENTS

;------------------------------------------------------------
Event OnSpellCast(form akSpellCast)
	_gameTimeCoolDown = RealTimeSecondsToGameTimeHours(CoolDown)

	if akSpellCast == BeastPower
		_usedChargesCount += 1

		if _usedChargesCount == 1
			RegisterForSingleUpdateGameTime(_gameTimeCoolDown)
		endif

		if _usedChargesCount >= self.MaxUsedChargesCount
			BeastPowerWaitMessage.Show()
			PlayerRef.RemoveSpell(BeastPower)
		endif
	endif

EndEvent


;------------------------------------------------------------
Event OnUpdateGameTime()
	_usedChargesCount -= 1

	if _usedChargesCount > 0
		RegisterForSingleUpdateGameTime(_gameTimeCoolDown)
	endif

	if !PlayerRef.HasSpell(BeastPower)
		BeastPowerReadyMessage.Show()
		PlayerRef.AddSpell(BeastPower, false)

		if (PlayerRef.GetEquippedSpell(2) == None) && (PlayerRef.GetEquippedShout() == None)
			PlayerRef.EquipSpell(BeastPower, 2)
		endif
	endif

EndEvent

;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS

;------------------------------------------------------------
; Time scale tools
;------------------------------------------------------------
float Function RealTimeSecondsToGameTimeHours(float realtime)
	float scaledSeconds = realtime * TimeScale.Value
	
	return scaledSeconds / (60 * 60)

EndFunction

;########## FUNCTIONS END
; ==============================================================================================
