Scriptname WO_SkjorBlockActivationOnDeath extends ReferenceAlias  


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnInit()
	if self.GetActorReference().IsDead()
		self.GetReference().BlockActivation()
	endif

EndEvent


;------------------------------------------------------------
Event OnDeath (Actor killer)
	self.GetReference().BlockActivation()

EndEvent

; ####### EVENTS END
; ==============================================================================================
