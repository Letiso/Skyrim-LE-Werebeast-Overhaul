Scriptname WO_WerewolvesHunterAddPerkOnBookRead extends ObjectReference  


; ==============================================================================================
;########## PROPERTIES

Actor Property PlayerRef Auto

Perk Property WO_WerewolvesHunter Auto
Spell Property WO_WerewolvesHunterSpell Auto

Message Property WO_WerewolvesHunterGainMessage Auto

LeveledItem Property WO_DeathItemWerewolvesHunter Auto

; Gallows Rock entries
ObjectReference Property WerewolfCorpses1 Auto
ObjectReference Property WerewolfCorpses2 Auto
ObjectReference Property WerewolfCorpses3 Auto

ObjectReference Property WerewolfPrisoner1 Auto
ObjectReference Property WerewolfPrisoner2 Auto

;########## PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA
; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
;########## EVENTS

;------------------------------------------------------------
Event OnRead()
	if !PlayerRef.HasPerk(WO_WerewolvesHunter)
		PlayerRef.AddPerk(WO_WerewolvesHunter)
		PlayerRef.AddSpell(WO_WerewolvesHunterSpell)

		WO_WerewolvesHunterGainMessage.Show()

		WerewolfCorpses1.AddItem(WO_DeathItemWerewolvesHunter)
		WerewolfCorpses2.AddItem(WO_DeathItemWerewolvesHunter)
		WerewolfCorpses3.AddItem(WO_DeathItemWerewolvesHunter)

		if (WerewolfPrisoner1 as actor).IsDead()
			WerewolfPrisoner1.AddItem(WO_DeathItemWerewolvesHunter)
		endif
		if (WerewolfPrisoner2 as actor).IsDead()
			WerewolfPrisoner2.AddItem(WO_DeathItemWerewolvesHunter)
		endif
	endif

EndEvent

;########## EVENTS END
; ==============================================================================================


; ==============================================================================================
;########## FUNCTIONS
;########## FUNCTIONS END
; ==============================================================================================
