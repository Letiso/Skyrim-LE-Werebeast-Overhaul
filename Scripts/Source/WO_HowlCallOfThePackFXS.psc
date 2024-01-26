Scriptname WO_HowlCallOfThePackFXS extends Actor  


;########## PROPERTIES INIT

EffectShader Property DA02ArmorShadow Auto


;########## PROPERTIES INIT END

bool isFlashingGhost

;########## EVENTS

;---------------------------
Event OnLoad()
	DA02ArmorShadow.Play(self)

	self.SetAlpha(0.1)
	Utility.Wait(0.1)
	self.SetAlpha(0.2)
	Utility.Wait(0.1)
	self.SetAlpha(0.3)

	RegisterForAnimationEvent(self, "bowDraw")
	RegisterForAnimationEvent(self, "weaponSwing")
	RegisterForAnimationEvent(self, "arrowRelease")

EndEvent


;---------------------------
Event OnHit(ObjectReference akAggressor, form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
	FlashGhost()
	
EndEvent


;---------------------------
Event OnAnimationEvent(ObjectReference akSource, string EventName)
	FlashGhost()
		
EndEvent


;---------------------------
Event OnDying(actor Killer)
	TurnOff()		

EndEvent

;########## EVENTS END


;########## FUNCTIONS

;---------------------------
Function FlashGhost()
	if isFlashingGhost
		return
	endif

	isFlashingGhost = True
	
	self.setAlpha(0.5, True)
	utility.wait(1)
	SELF.setAlpha(0.3)
	
	isFlashingGhost = False
	
EndFunction


;---------------------------
Function TurnOff()
	isFlashingGhost = True ; to prevent FlashGhost() applying

	DA02ArmorShadow.Stop(Self)

	self.SetAlpha(0.2)
	Utility.Wait(0.33)
	self.SetAlpha(0.1)
	Utility.Wait(0.33)
	self.SetAlpha(0.0)
	Utility.Wait(0.33)

	self.Disable()
	self.Delete()

EndFunction

;########## FUNCTIONS END